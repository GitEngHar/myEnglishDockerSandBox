CREATE TABLE IF NOT EXISTS hotels
(id INT PRIMARY KEY, name VARCHAR(255), price_pernight INT, rooms_available INT);

CREATE TABLE IF NOT EXISTS reserve_hotel
(id INT PRIMARY KEY,
 iscancel BOOL ,
 hotelid INT ,
 userid INT ,
 reserved_unix_datetime int,
 checkin_unix_datetime int,
 foreign key hotel_id_foreign_key (hotelid) references hotels (id)
);