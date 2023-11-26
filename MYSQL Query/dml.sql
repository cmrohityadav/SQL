-- INSERT 

insert into student values(1,"Rohit",23);
insert into student (id,name,age) values(2,"rahul",20),
(3,"poonam",25);

insert into student (id ,name) values(10,"raj");
insert into student (name,id) values("karan",4);

insert into temp1 (id) values(101);
insert into temp1 (id) values(101);

insert into temp2(id) values(101);

-- college database
insert into student (rollno,name,mark,grade,city)
values
(101,"anil",78,"c","pune"),
(102,"bhumika",93,"A","mumbai"),
(103,"chetan",58,"B","Mumbai"),
(104,"dhruv",96,"A","delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"Farah",82,"B","Delhi");


-- UPDATE 
-- to update existing rows

set sql_safe_updates=0;
update student set grade="O" where grade="A";
update student  set mark=30 where rollno=105;
update student set grade ="B" where mark>80;
update student set mark=mark+1 ;


-- DELETE
-- to delete existing rows

delete from student ; -- it delete all rows
delete from student where mark<33;



