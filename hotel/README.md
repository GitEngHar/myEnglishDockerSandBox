### 接続確認

- ContainerExec
```shell
docker exec -it hotel_db /bin/bash 
```

- mysql接続テスト
```shell
mysql --host=localhost --user=root --password=password hotel_db
```

- 停止しているコンテナを全て削除
```shell
docker container prune -f
```

- Billsホテルテーブルの構築
```mysql
CREATE TABLE IF NOT EXISTS hotels 
    (id INT PRIMARY KEY, name VARCHAR(255), price_pernight INT, rooms_available INT);
```

- Billsホテル予約テーブルの構築
```mysql
CREATE TABLE IF NOT EXISTS reserve_hotel 
    (id INT PRIMARY KEY, 
     iscancel BOOL ,
     hotelid INT ,
     userid INT ,
     reserved_unix_datetime int, 
     checkin_unix_datetime int,
     foreign key hotel_id_foreign_key (hotelid) references hotels (id)
);
```
