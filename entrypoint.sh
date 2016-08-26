#!/bin/bash

set -ex

echo "$@"

case "$1" in
  rails|rake|passenger)
    for name in "${!REDMINE_PLUGIN_@}"; do
      git clone "${!name}" "plugins/${name#REDMINE_PLUGIN_}" --single-branch --depth=1
    done
    /docker-entrypoint.sh rake redmine:plugins
    set -- gosu redmine "$@"
    ;;
esac

exec "$@"
