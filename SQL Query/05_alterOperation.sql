use org;
create table account(
id int primary key,
name varchar(255) unique,
balance int not null default 0
);
select * from account;

/* add new column*/
alter table  account add interest float not null default 0;

/*modify*/

alter table account modify interest double not null default 0;
desc account;


/* chnage column-- rename the column*/
alter table account change column interest savingInterest float not null default 0;

/*  drop column*/
alter table account drop column savingInterest;

/* rename the table*/
alter table account rename to accountDetails;
