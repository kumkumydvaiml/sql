use dummy;

show tables;

select * from offices;

select city,count(country) from offices group by (city);

