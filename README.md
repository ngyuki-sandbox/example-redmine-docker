# redmine on docker

## Link

- docker images
    - [redmine](https://hub.docker.com/_/redmine/)
    - [mysql](https://hub.docker.com/_/mysql/)
- [docker-compose.yml](https://docs.docker.com/compose/compose-file/)

## Demo

起動

```
docker-compose up -d
```

ログの閲覧

```
docker-compose logs -f
```

コンテナに入る

```
docker-compose exec mysql bash
docker-compose exec redmine bash
```

rake タスクの実行

```
docker-compose exec --user=redmine redmine rake redmine:plugins
```
