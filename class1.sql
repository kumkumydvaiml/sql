show databases;
use college;
show tables;
select * from student;
drop table student;
insert into student(id int not null,name varchar(30),age int check(age>18)); 
#id name age dob gender percent