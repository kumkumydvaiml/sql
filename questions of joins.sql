use groupby;
show tables;
select * from departments;

INSERT INTO Employees VALUES
(101, 'Alice', 1, 55000, '2021-01-15'),
(102, 'Bob', 2, 60000, '2020-03-10'),
(103, 'Charlie', 1, 52000, '2019-07-23'),
(104, 'David', 3, 75000, '2018-11-12'),
(105, 'Eva', 4, 48000, '2022-06-01'),
(106, 'Frank', 1, 57000, '2021-08-19'),
(107, 'Grace', 2, 62000, '2023-01-05'),
(108, 'Helen', 3, 77000, '2019-02-17'),
(109, 'Ian', 5, 69000, '2020-09-09'),
(110, 'Jane', 5, 72000, '2021-12-12');

select * from employees;

# q1 Show the total number of employees in each department?

select count(e.employee_id) as total_employee, d.department_name
from departments d inner join employees e using(department_id)
group by  department_name;

#q-2 Display the average salary of employees in each department.
select d.department_name,avg(e.salary) as average_salary
from departments d inner join employees e using (department_id)
group by department_name;

#q-3 List departments and their highest salary
select d.department_name,max(e.salary) as highest_salary
from departments d inner join employees e using(department_id)
group by department_name;

# q-4 Show the lowest salary in each department.
select d.department_name,min(e.salary) as lowest_salary
from departments d inner join employees e using(department_id)
group by department_name;

# q-4 Display the department name with the total salary paid to its employees.
select d.department_name,sum(e.salary) as total_salary
from departments d inner join employees e using (department_id)
group by department_name;


# q-5 List each department and count of employees hired after '2020-01-01'
#error
select d.department_name,count(e.employee_id) as count_employee
from departments d inner join employees e using (department_id)
where e.hire_date>"2020-01-01"
group by department_name;

# q-6 Show department names and the number of employees whose salary is more than 60000
#error
select d.department_name,count(e.employee_id) as employee_count,e.salary
from departments d inner join employees e using(department_id)
where e.salary>60000
group by department_name;

# q-7 Display departments where the average salary is greater than 60000
#error
select d.department_name,e.salary as max_salary 
from departments d inner join employees e using(department_id)
group by department_id having max(e.salary)>60000
order by e.salary desc;

#q-8 Find the total number of departments that have more than 2 employees.
select d.department_name,count(e.employee_id)
from departments d inner join employees e using (department_id)
 where employee_id>2
group by department_name limit 2;

#q-9 Show departments having total salary greater than 150000.
select d.department_name,sum(e.salary) as total_salary
from departments d inner join employees e using (department_id)
group by department_name
having total_salary >150000;

# q-10 Show department names and average salary of employees whose name starts with 'A' to 'M'.
select d.department_name,avg(e.salary) as average_salary
from departments d inner join employees e using (department_id)
where e.name like "a%" and "%m"
group by department_name;









