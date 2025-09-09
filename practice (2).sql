use c1;
show tables;
create table patient(pat_id int primary key,
pat_name varchar (30) not null,
age int not null,
gender varchar(10));

insert into patient(pat_id,pat_name,age,gender) values 
(1,"ravi",30,"M");

select * from patient;

create table appo(appo_id int primary key,appo_date date not null,appo_time varchar(10),
pat_id int,foreign key (pat_id) references patient (pat_id));

insert into appo(appo_id,appo_date,appo_time) values(1,"2025-10-08","07:30");
select * from appo;

alter table appo add column country varchar(30);
desc appo;
alter table appo modify country varchar(40);
alter table appo modify country varchar(40) null;
alter table appo change appo_date appo_tarikh date;
delete from  appo where country="India";
set sql_safe_updates=0;

