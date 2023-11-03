create database mydb;
use mydb;
create table mytable(
id int unsigned not null auto_increment,
username varchar(255) not null,
email varchar(255) not null,
primary key (id)

);

insert into mytable (username,email) 
values ('cmrohit','cmrohit@gmail.com'),
('cmrohit2','cmrohit2@gmail.com'),
('cmrohit3','cmrohit3@gmail.com'),
('cmrohit5',"cmrohit5@gmail.com"),
('cmrohit4','cmrohit4@gmail.com');

update mytable set username="faiza" where id=2;
select * from mytable;

delete from mytable where id=5;
delete from mytable;

select * from mytable where id=3;

show databases;
show tables;
describe mytable;

create table car(
car_id int unsigned not null primary key,
name varchar(255),
price decimal (8,2)
);
drop table car;
INSERT INTO CAR (`car_id`, `name`, `price`) VALUES (1, 'Audi A1', '20000');
INSERT INTO CAR (`car_id`, `name`, `price`) VALUES (2, 'Audi A1', '15000');
INSERT INTO CAR (`car_id`, `name`, `price`) VALUES (3, 'Audi A2', '40000');
INSERT INTO CAR (`car_id`, `name`, `price`) VALUES (4, 'Audi A2', '40000');

select  distinct * from car;







