CREATE DATABASE tcldb

USE tcldb

CREATE TABLE tcltable(stockname VARCHAR(50),mktprice DECIMAL(5,2), qty INT(5))


BEGIN;
INSERT INTO tcltable(stockname,mktprice,qty)
VALUES('tcs',111.5,10),('iol',11.5,110);
UPDATE tcltable
SET qty=40
WHERE stockname='tcs'

COMMIT;

SELECT * FROM tcltable




BEGIN;

SAVEPOINT itsLikeCommitHashCodeInGit

INSERT INTO tcltable(stockname,mktprice,qty)
VALUES('lic',11.5,20),('zee',11.5,10);

SELECT * FROM tcltable

ROLLBACK TO itsLikeCommitHashCodeInGit

SELECT * FROM tcltable