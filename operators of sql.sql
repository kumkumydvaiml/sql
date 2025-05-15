use dummy;

select * from students;

select * from students where Dept="cs" and marks>70;

select * from students where marks<70 or dept="cs";

select * from students where marks between 70 and 80;

select * from students where dept not in ("eng","cs");

select * from students where dept="math" limit 2;

select * from students order by marks asc;

select max(marks) from students;

select avg(marks) from students;



