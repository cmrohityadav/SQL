CREATE DATABASE IF NOT EXISTS joinsDb

DROP DATABASE joinsDb

USE joinsDb

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

SELECT * FROM customers

SELECT * FROM orders

-- JOIN and INNER JOIN are same
-- first written or mention table are LEFT one and other one RIGHT
SELECT ctbl.custName ,otbl.productName,otbl.qty
FROM customers AS ctbl
INNER JOIN orders otbl
ON ctbl.customerId=otbl.custId

SELECT ctbl.custName AS "Customer Name" ,otbl.productName AS "Product Name",otbl.qty AS " Quantities"
FROM customers AS ctbl
INNER JOIN orders otbl
ON ctbl.customerId=otbl.custId
