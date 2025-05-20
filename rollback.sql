use dummy;
create table dum(id int unique,name varchar(30));

show tables;
drop table dum;

describe students;
select * from students;

update students set marks=99 where student_number=1;
rollback;



set sql_safe_updates = 0;
