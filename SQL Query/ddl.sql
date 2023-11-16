CREATE database db;

create database tempdb;

drop  database tempdb;

use db;

create table student (
id int primary key,
name varchar(50),
age int not null);