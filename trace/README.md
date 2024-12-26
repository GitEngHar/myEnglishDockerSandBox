### 接続確認

- シークレットKeyを取得する
```shell
docker compose run --rm  sentry config generate-secret-key
```

- DB初期化と初期ユーザーの作成
```shell
docker-compose run --rm sentry upgrade
```

- sentryを起動する
```shell
docker-compose up -d
```


