Show Databases;
use c1;
create table employee(id int primary key,
 name varchar(30) not null ,
salary int not null);
insert into employee(id,name,salary) values(1,"Kumkum",50000),
(2,"Sakhsi",30000),(3,"Bob",40000);
select * from employee;
alter table employee add country varchar(30);
select id from employee;
select name from employee;
select salary from employee where id=2;
update employee set country="India" where id =2;
