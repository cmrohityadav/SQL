use org;

/* insertion*/
insert into worker(
workerId,
firstName,
lastName,
salary,
joiningDate,
department
) 
values
(011,'monika','yadav',100000,'14-02-20 09.00.00' , 'hr'),
(012,'kajal','arora',100000,'14-02-20 09.00.00' , 'hr');

select * from worker;

/*update*/
update  worker set firstName='anjali',lastName='yadav' where workerid =1;

/* delete*/
delete from worker where workerId =12;



