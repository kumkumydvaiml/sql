use dummy;
show tables;
select * from customers;

#to querify the limited data
select customernumber, city, state from customers;

#clauses to querify the specific result set
select * from customers where city = "Nantes";

# to 
#select customernumber, city, state

select * from customers where country in ("france", "usa", "australia");

select * from customers where country not in ("france", "usa","australia");

#to arrange data in sequential manner
select * from customers order by creditlimit desc;
select * from customers order by creditlimit asc;

select * from customers where creditlimit > 50000;
select * from customers where creditlimit < 50000;
select * from customers where creditlimit <> 50000;
select * from customers where creditlimit >= 50000;
select * from customers where creditlimit <= 50000;

show engines;
