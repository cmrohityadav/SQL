CREATE DATABASE 1nfdb

USE 1nfdb

CREATE TABLE orders(
    orderId SERIAL PRIMARY KEY,
    customerName VARCHAR(50),
    products VARCHAR(255),
    qty VARCHAR(100)
)

INSERT INTO orders(customerName,products,qty)
VALUES('person1','T-shirt',)