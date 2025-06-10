create database questions;
use questions;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO Departments VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'HR'),
(5, 'IT');
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

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
select * from departments;

select e.name,d.department_name from departments d 
inner join employees e on d.department_id = e.department_id;

# 2. Show employee name, department name, and salary using INNER JOIN.
select e.name,d.department_name,salary 
from departments d inner join employees e on d.department_id=e.department_id; 

# 3. Find all departments even if they have no employees (LEFT JOIN).
select * from departments d 
left join employees e on d.department_id = e.department_id; 

#4. List departments and employee count (including 0 for empty departments).
 select d.department_name,count(employee_id) as emp_count
 from departments d inner join employees e 
 using (department_id)
 group by department_name;
 
# 5. Show departments without any employees.
select department_name from departments d inner join employees e
using (department_id) where department_id=null;

# 6. List employee names whose department is ‘Sales’.
select d.department_name,e.name from departments d 
inner join employees e using (department_id)
where department_name="Sales";

# 7. Show all employees hired after 2020 with department names.
select e.name, d.department_name,year(hire_date) from departments
d inner join employees e using (department_id) where year(hire_date)="2020"



#




