SHOW DATABASES

USE chaistoredb

SHOW TABLEs


ALTER TABLE  chaistore
ADD stock INT DEFAULT 0

SELECT * FROM chaistore

ALTER TABLE chaistore
DROP COLUMN stock


ALTER TABLE chaistore
RENAME COLUMN chainame TO teaname


ALTER TABLE chaistore
MODIFY COLUMN price DECIMAL(12,2)

--or

ALTER TABLE chaistore
ALTER  COLUMN price  DECIMAL(12,2)



ALTER TABLE chaistore
RENAME TO chaimenu

SELECT * FROM chaimenu



