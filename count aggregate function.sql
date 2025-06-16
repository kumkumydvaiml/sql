use dummy;
select * from customers;


select * from customers city limit 3;

select * from customers order by creditlimit desc limit 3;

select * from students;

delete from students where student_number=5;

alter table student rename to students;

desc students;

alter table students drop primary key;

alter table students add column age int not null;

update students set age=20 where student_number=1;

select * from students where marks>80;
select * from students where marks>70 and dept="math";
select * from students where marks between 80 and 90;







