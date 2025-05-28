use dummy;
select * from customers;
select * from orders;
select * from customers inner join orders on customers.customerNumber = orders.customerNumber;

# ambiguous error ko solve
select customers.customernumber,customers.customername,customers.city,
orders.status from customers inner join orders on 
customers.customernumber=orders.customernumber;



select c.customernumber,c.customername,
c.city,o.status from customers as c inner join orders as o on c.customernumber=
o.customernumber;

