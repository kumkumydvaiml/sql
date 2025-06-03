use dummy;

select * from customers;
select * from payments;
select * from orders;

# for multiple table joins
select * from customers c inner join orders o
on c.customernumber= o.customernumber
inner join payments p on o.customernumber = p.customernumber;


