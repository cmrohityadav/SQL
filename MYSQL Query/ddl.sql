-- database create

CREATE database db;
create database  db;
create database if not exists db;

create database if not exists xyz;

-- USE  & SHOW DATABASE
show databases;
use db;
show tables;


-- drop database

drop database xyz;
create database tempdb;
create database college;
use college;

drop  database tempdb;
use db;


-- create table 

create table student (
id int primary key,
name varchar(50),
age int not null);


-- DROP TABLE
drop table student;


-- Key & onstraint

create table student(
id int(100) primary key,
name varchar(20) 
);

create table temp1(id int unique);

create table temp(
id int not null,
primary key(id));

create table temp(
id int not null,
name varchar(50),
primary key(id,name));

create table temp(
cust_id int,
foreign key (cust_id) references temp1(id)
);

create table temp2(
id int,
salary int default 25000
);

create table city (
id int primary key,
city varchar(50),
age int,
constraint age_check check(age>=18 and city="mumbai")
);

create table newtable(
age int check (age>=18)
);

create table student(
rollno int primary key,
name varchar(50),
mark int not null,
grade varchar(1),
city varchar(20)
);

create table dept(
id int primary key,
name varchar(50)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
);

-- Cascading
-- on delete:
-- on update: 
create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
on update cascade
on delete cascade
);


-- ALTER 
--  To change the Schema

-- ADD  column : to add new column
alter table student 
add column age int;

-- Drop column : delete column
alter table student 
drop column age;

-- Rename to  : rename of table
alter table student 
rename to class;

-- Change Column : rename of column
alter table student
change column  age umar int; 

-- modify : change data and constraint
alter table student
modify age long unique not null;


-- TRUNCATE
-- To delete all data of table but not table schema

truncate table student;






















