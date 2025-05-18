use dummy;
show tables;
select * from employees;
select email from employees;
select lastName from employees where lastName="Patterson";
select * from employees order by lastName asc;
alter table employees change lastName Name varchar(50);
select * from orders;
describe orders;

alter table stu rename to orders;

alter table orders modify status varchar(20);

select * from orders where orderNumber=10324;

update orders  set age =26 where id=1;

select * from employees where officeCode=4;

select * from employees order by officecode desc;

desc employees;
alter table employees add column age int;

update employees  set age=20 where employeeNumber=1002;
update employees  set age=21 where employeeNumber=1056;
update employees  set age=20 where employeeNumber=1076;
update employees  set age=19 where employeeNumber=1102;
update employees  set age=22 where employeeNumber=1216;
update employees  set age=21 where employeeNumber=1286;

update employees  set age=20 where employeeNumber=1188;

select * from employees where firstName like 'A%';
select * from employees where Name like '%A';

select * from employees where officeCode between 1 and 4;

select * from employees where Name like '%A%' or firstName like '%A%';


select * from employees limit 5;



