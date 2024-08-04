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

--creating learner table
CREATE TABLE learners (
LearnerId INT AUTO_INCREMENT,
LearnerFirstName VARCHAR(50) NOT NULL,
LearnerLastName VARCHAR(50) NOT NULL,
LearnerPhoneNo VARCHAR(15) NOT NULL,
LearnerEmailId VARCHAR(50),
LearnerEnrollmentDate TIMESTAMP NOT NULL,
SelectedCourses INT NOT NULL,
YearOfExperience INT NOT NULL,
LearnerCompany VARCHAR(50) ,
SourceOfJoining VARCHAR(50) NOT NULL,
BatchStartDate TIMESTAMP NOT NULL,
Location VARCHAR(50) NOT NULL,
PRIMARY KEY(LearnerId),
UNIQUE KEY(LearnerEmailId),
FOREIGN KEY (SelectedCourses) REFERENCES course(courseId)
)

SHOW TABLES

DROP TABLE learners

DESC learners

--Insert the learners details in the learners table
--Batch start date 1: '2024-02-29'
-- Batch start date 2: '2024-01-16'
-- Batch start date 3: '2024-03-25'
INSERT INTO learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailId,LearnerEnrollmentDate,SelectedCourses,YearOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location
)VALUES ("Akash","Mishra","9874561230","akash@gmail.com",'2024-01-21',1,4,"Amazon","LinkedIn",'2024-02-29',"Bengalure")

SELECT * FROM learners
