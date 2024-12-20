CREATE DATABASE IF NOT EXISTS innerQryDb

DROP DATABASE innerQryDb

USE innerQryDb

CREATE TABLE customers(
    customerId INT PRIMARY KEY,
    custName VARCHAR(50)
)

CREATE TABLE orders(
    ordId INT PRIMARY KEY,
    custId INT(50),
    productName VARCHAR(255),
    qty INT (50),
    FOREIGN KEY (custId) REFERENCES customers (customerId)
)

SHOW TABLES

INSERT INTO customers(customerId,custName)
VALUES(1,'AAA'),(2,'BBB'),(3,'CCC'),(4,'DDD'),(5,'EEE')

INSERT INTO orders(ordId,custId,productName,qty)
VALUES(101,1,'T-shirt',2),
(102,1,'Jeans',1),
(103,2,'Jacket',1),
(104,NULL,'Sneakers',2)


SELECT custName  FROM customers
WHERE customerId IN (
    SELECT custId
    FROM orders
    WHERE productName='T-shirt'
)


