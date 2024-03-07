-- Joins: It is used to combine rows from two or more tables,
-- based on a related column between them

-- creating database and entries for joins
create database if not exists classes;
use classes;
create table student(
student_id int,
name varchar(250)
);

create table course(
student_id varchar(250),
course varchar(250)
);

insert into  student (student_id,name)
values(101,"adam"),(102,"bob"),(103,"casesy");

insert into course (student_id,course)
values(102,"english"),(105,"maths"),(103,"sci"),(107,"cs");

select * from student;
select * from course;


-- INNER JOIN
-- Return records that have matching values in both tables


select * 
from student
inner join course
on student.student_id=course.student_id;

-- using Alias : alternative name of table
select * 
from student as s
inner join course as c
on s.student_id=c.student_id;


-- LEFT JOINS
-- returns all records from the left table , 
-- and matched records from the  right table

select*
from student as s
left join course as c
on s.student_id=c.student_id;


-- RIGHT JOINS
-- returns all records from the right table , 
-- and matched records from the  left table

select*
from student as s
right join course as c
on s.student_id=c.student_id;


-- FULL JOIN
-- returns all records when there is a match in either left or right table

select*
from student as s
left join course as c
on s.student_id=c.student_id
union
select*
from student as s
right join course as c
on s.student_id=c.student_id;


-- SELF JOIN
-- It is a regular join but the table is joined with itself

select * 
from student as a
join course as b
on a.student_id=b.student_id;



