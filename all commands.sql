create database d2;
use d2;
create table employee(emp_id int primary key,
emp_name varchar(30),emp_salary int not null);
desc employee;

create table department(dep_id int primary key,dept_name varchar(20),
age int not null check(age>20));
desc department;
alter table employee add foreign key (dept_id) references department (dept_id); 

#modify
alter table employee modify column emp_name varchar(70);

alter table employee modify column emp_id bigint;
describe employee;

alter table department drop primary key;

#alter table employee drop foreign key employee_ibfk_1; 
#rename column level
rename table department to dept;

#rename table level
alter table dept rename column dept_name to department_name; 

insert into employee(emp_id,emp_name,emp_salary) values(1,"A",30000) ,(2,"B",63998);

insert into dept(dept_id,department_name,age) values(1,"C",20),(1,"D",30);

select * from dept;
select * from employee;
