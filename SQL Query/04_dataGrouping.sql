use org;
/* group by */

select department from worker group by  department;
select department,count(department) from worker group by  department;

select  department , avg(salary) from worker group by department;

select department , min(salary) from worker group by department;

select department , max(salary) from worker group by department;

select department , sum(salary) from worker group by department;

/* group having*/
select department , count(department) from worker group by department;
select department , count(department) from worker group by department having count(department)>2;
