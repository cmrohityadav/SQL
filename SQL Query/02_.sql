create database org;
show databases;
use org;
create table worker(
workerId int not null primary key auto_increment,
firstName char(25),
lastName char(25),
salary int(15),
joiningDate datetime,
department char(25)
);
show tables;
select * from worker;
insert into worker(workerId,firstName,lastName,salary,joiningDate,
department) values(001,'monika','arora',100000,'14-02-20 09.00.00' , 'hr'),(002,'rohit','yadav',100000,'14-02-20 09.00.00' , 'hr'),
(003,'vishal','singh',300000,'14-02-20 09.00.00' , 'admin'),
(004,'amitabh','pandey',500000,'14-02-20 09.00.00' , 'admin'),
(005,'vivek','bhati',500000,'14-06-11 09.00.00' , 'admin'),
(006,'vipul','diwan',200000,'14-06-11 09.00.00' , 'account'),
(007,'satish','kumar',75000,'14-01-20 09.00.00' , 'account'),
(008,'greetika','chauhan',90000,'14-04-11 09.00.00' , 'admin');

create table bonus(
workerRefId int,
bonusAmount  int(10),
bonusDate datetime,
foreign key (workerRefId ) references worker(workerId)
on delete cascade
);
use org;
insert into bonus(workerRefId,bonusAmount,bonusDate) values
(001,5000,'16-02-20'),
(002,3000,'16-06-20'),
(003,4000,'16-02-20'),
(001,4500,'16-02-20'),
(002,5000,'16-06-11');

create table title(
workerRefId int,
workerTitle char(25),
affectedFrom datetime,
foreign key (workerRefId)
references worker(workerId)
on delete cascade

);

insert into title (workerRefId,workerTitle,affectedFrom )
values (001,'manager','2016-02-20 00:00:00'),
 (002,'executive','2016-06-11 00:00:00'),
  (008,'executive','2016-06-11 00:00:00'),
   (005,'manager','2016-06-11 00:00:00'),
    (004,'asst. manager','2016-06-11 00:00:00'),
     (007,'executive','2016-06-11 00:00:00'),
      (006,'lead','2016-06-11 00:00:00'),
  (003,'lead','2016-06-11 00:00:00');
  
  select * from worker;
  select salary from worker;
  select firstName, salary from worker;
  
/* dual table-- */ 
 select now();
 select 44+10;
 select lcase('Rohit');
 select ucase('rohit');
 
 /* where */
 select * from worker where salary <100000;
 select * from worker where department = 'admin';
 
 /* between*/
 select * from worker where salary between 80000 and 300000;
 
 /* reduce or statement */
 select * from worker where department ='hr' or department='admin';
 
 select * from worker where department ='hr' or department='admin' or department = 'account';
 
 /*better way :in */
 select * from worker where department in('hr','admin');
 /*not */
  select * from worker where department not in('hr','admin');
  
  
/*wild card*/
select * from worker;
select * from worker where firstName like '%i%';
select * from worker where firstName like '_i%';
select * from worker where firstName like '%i__';
select * from worker where firstName like '%i';
select * from worker where firstName like '%k';

/* distinct*/
select department from worker;
select distinct department from worker;



 
 
 
 
  

       