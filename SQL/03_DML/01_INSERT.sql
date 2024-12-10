CREATE DATABASE insertdb

USE insertdb


CREATE TABLE product(
    name VARCHAR(255),
    price INT(100),
    stock INT(50)
)

INSERT INTO product(name,price,stock)
VALUES ('Tshirt',500,10)

SELECT * FROM product

UPDATE product
SET price=2
WHERE stock=10;

DELETE FROM product
WHERE price=500



