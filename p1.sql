create database db40;
use db40;
show tables;
create table department (dept_id int primary key,
dept_name varchar(50) not null);
alter table department modify dept_name varchar(50);
alter table department rename to dept;
select * from department;
describe department;
alter table dept rename to department;





create table employee (emp_id int primary key,
emp_name varchar(50),
dept_id int,
foreign key(dept_id) references department(dept_id));
describe employee;
