CREATE DATABASE chaiStoreDB

USE chaiStoreDB

CREATE TABLE chaiStore (
    id          SERIAL PRIMARY KEY,
    chaiName    VARCHAR(50),
    price       DECIMAL(5,2),
    chaiType    VARCHAR(50),
    available   BOOLEAN
)

INSERT INTO chaiStore(
    chaiName,
    price,
    chaiType,
    available
) VALUES
('Masala Chai',30.00,'Spiced',TRUE),
('Green Chai',25.00,'Herbal',TRUE),
('Black Chai',20.00,'Classic',TRUE),
('Ice Chai',35.00,'Cold',FALSE),
('Oolong Chai',45.00,'Specialty',TRUE)

SELECT * FROM chaiStore

SELECT chaiName, price FROM chaiStore

SELECT chaiName AS "Chai Name", price AS "Cost in INR" FROM chaiStore

SELECT * FROM chaiStore WHERE chaiName='Black Chai'

SELECT * FROM chaiStore WHERE chaiName LIKE '%Chai%'

SELECT * FROM chaiStore WHERE price<30;

SELECT * FROM chaiStore ORDER BY price 

SELECT * FROM chaiStore ORDER BY price DESC


UPDATE chaistore
SET price =38.00,available=TRUE
WHERE chaiName='Ice chai'


DELETE FROM chaistore
WHERE chaiName='Black Chai'





