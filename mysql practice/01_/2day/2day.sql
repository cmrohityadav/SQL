SHOW DATABASES;
USE priya;

SHOW TABLES;

SELECT * FROM employee;

--create a table by the name of course having named CourseId, CourseName, courseDurationMonths,couseFee
CREATE TABLE course(
    courseId INT PRIMARY KEY AUTO_INCREMENT,
    courseName VARCHAR(255) NOT NULL,
    courseDurationMonth INT NOT NULL,
    courseFee INT NOT NULL
);
DROP TABLE course;
DESC course;

--INSERT  the course details inside the table named course
--The complete excel,3,1499
--DSA for interview ,2,499
--SQL Bootcamp ,1,2999

INSERT INTO course(courseName,courseDurationMonth,courseFee)
VALUES("The complete excel Mastery Course",3,1499);


INSERT INTO course(courseName,courseDurationMonth,courseFee)
VALUES("DSA for interview ",2,4999);
INSERT INTO course(courseName,courseDurationMonth,courseFee)
VALUES("SQL Bootcamp ",1,2999);

SELECT * FROM course;