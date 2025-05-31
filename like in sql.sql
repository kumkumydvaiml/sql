show databases;
use d2;
show tables;
drop table employee;
create table new(id int not null unique, name varchar(30),age int not null check(age>19));
select * from new;
insert into new (id,name,age) values(1,"anamika",24),(2,"laxmi",26),(3,"avantika",22),(4,"pari",21),(5,"kuki",20),(6,"govind",20);
select * from new where name like '%i';
select id from new;
select * from new order by age desc limit 2 offset 1;
alter table new rename to news; 
select * from news;

