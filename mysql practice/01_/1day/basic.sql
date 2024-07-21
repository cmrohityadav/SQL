SHOW DATABASES;

CREATE DATABASE priya;
CREATE DATABASE IF NOT EXISTS priya;

USE priya;

SELECT DATABASE()

CREATE TABLE employee(
    EID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(50) NOT NULL
    
    )

DESC employee;

DROP TABLE employee

SHOW TABLES;

INSERT INTO employee VALUES(1,"Priya","Bhatia",27,20000,mumbai);

INSERT INTO employee(firstName,lastName,age,salary,location) VALUES("priya","bhatia",27,20000,"bangalore");
INSERT INTO employee(firstName,lastName,age,salary,location) VALUES("riya","roy",24,60000,"bengalore");
INSERT INTO employee(firstName,lastName,age,salary,location) VALUES("kiya","sena",20,20040,"delhi");
INSERT INTO employee(firstName,lastName,age,salary,location) VALUES("kaneesha","brownlee",28,10040,"kanpur");
INSERT INTO employee(firstName,lastName,age,salary,location) VALUES("naga","sai",30,1550040,"pune");
INSERT INTO employee(firstName,lastName,age,salary,location) VALUES("manish","yadav",20,255040,"lalji");
INSERT INTO employee(firstName,lastName,age,salary,location) VALUES("ritil","yadav",35,160040,"mahavir");

SELECT * from employee

-- give me the employee details having salary more than 100000
SELECT * FROM employee WHERE salary>100000;

SELECT FirstName,LastName FROM employee WHERE salary >100000

-- Give me the records of the employee having age more tha 30

SELECt * FROM employee WHERE age>30;

-- Update the last name of Priya with Bhatt
UPDATE employee SET lastName="Bhatt" Where EID=1;

-- Delete the record of EID =4
DELETE FROM employee WHERE EID=4;