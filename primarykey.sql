create database c1;
use c1;
#colunm level
create table new6 (id int unique not null,
age int not null , ids int primary key,idss int primary key);#isme error aayega kyuki multiple key nahi aa sakti colunm level pa
describe new6;
select * from new6;

# tabel level
create table new1(id int, age int not null,
primary key(id,age));
describe new1;
select * from new1;