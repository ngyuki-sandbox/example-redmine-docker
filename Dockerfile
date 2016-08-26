FROM redmine:3.3

RUN set -x &&\
    apt-get update &&\
    apt-get install -y --no-install-recommends make gcc &&\
    rm -rf /var/lib/apt/lists/* &&\
    gem install puma &&\
    apt-get purge -y --auto-remove make gcc

RUN echo 'gem "puma"' > Gemfile.local

RUN echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb
