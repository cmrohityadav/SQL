-- SELECT
select * from student;

select * from temp1;

select * from temp2;

-- college database
select * from student;
select name, mark from student;
select city from student;


-- DISTINCT 

select distinct city from student;


-- CLAUSES
-- WHERE : TO DEFINE SOME CONDITION

select *from student where mark>80;
select * from student where city="mumbai";
select * from student where mark>80 and city="mumbai";
-- OPERATORS
-- logical 
select * from student where mark+10>100;
select * from student where mark> 90 or city="mumbai";
select * from student where mark between 80 and 90;
select * from student where city in ("mumbai","delhi");
select * from student where city not in ("mumbai","delhi");

-- limit clause
select * from student limit 3;
select * from student where mark>70 limit 3;


-- ORDER By Clause

select * from student order by city asc;
select * from student order by mark asc;
select * from student order by mark desc;
select * from student order by name asc;
select * from student order by mark asc limit 2;

-- GROUP By Clause
-- groups rows that have the same values into summary rows
-- It collects data from multiple records and groups the result by one or more column
-- 1st refer aggregate functions

select city from student group by city;
select city, count(name) from student group by city;
select city , avg(mark) from student group by city order by avg(mark) desc;
select grade, count(name) from student group by grade ;


-- HAVING Clause
-- similar to where i.e applies some condition on rows
-- Used when we want to apply condition after grouping
select city, count(rollno) from student group by  city
having max(mark)>90;

SELECT city
FROM student
WHERE grade="a"
GROUP BY city
HAVING MAX(mark)>=93
ORDER BY city ASC;











