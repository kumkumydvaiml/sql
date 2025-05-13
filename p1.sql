create database ed;
use ed;
drop database ed;
create database db40;
use db40;
create table department (dept_id int primary key,
dept_name varchar(50) not null);


create table employee (emp_id int primary key,
emp_name varchar(50),
dept_id int,
foreign key(dept_id) references department(dept_id));
describe employee;