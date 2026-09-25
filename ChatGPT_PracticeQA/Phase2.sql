drop Table employees

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    designation VARCHAR(30),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(30)
);

INSERT INTO employees
(emp_id, emp_name, department, designation, salary, joining_date, city)
VALUES
(101, 'Rahul Sharma', 'IT', 'Developer', 55000, '2023-01-15', 'Bangalore'),
(102, 'Priya Reddy', 'HR', 'HR Executive', 42000, '2022-06-10', 'Chennai'),
(103, 'Arjun Kumar', 'IT', 'Tester', 48000, '2023-03-20', 'Hyderabad'),
(104, 'Sneha Rao', 'Finance', 'Accountant', 50000, '2021-11-05', 'Bangalore'),
(105, 'Vikram Singh', 'IT', 'Manager', 85000, '2020-02-18', 'Bangalore'),
(106, 'Meena Devi', 'HR', 'Manager', 78000, '2019-08-25', 'Chennai'),
(107, 'Kiran Patel', 'Finance', 'Manager', 82000, '2018-04-12', 'Mumbai'),
(108, 'Anjali Das', 'IT', 'Developer', 62000, '2024-01-10', 'Pune'),
(109, 'Rohit Verma', 'Sales', 'Sales Executive', 39000, '2023-07-22', 'Delhi'),
(110, 'Neha Kapoor', 'Sales', 'Manager', 75000, '2020-09-30', 'Delhi'),
(111, 'Suresh Rao', 'IT', 'Developer', 58000, '2024-05-14', 'Bangalore'),
(112, 'Divya Reddy', 'HR', 'Recruiter', 45000, '2024-02-01', 'Chennai'),
(113, 'Amit Sharma', 'IT', 'Developer', 60000, '2022-12-20', 'Hyderabad'),
(114, 'Pooja Singh', 'Finance', 'Accountant', 47000, '2023-08-15', 'Mumbai'),
(115, 'Karthik Rao', 'Sales', 'Sales Executive', 41000, '2024-03-10', 'Delhi');



SELECT DISTINCT department from employees

SELECT DISTINCT city from employees

SELECT DISTINCT designation from employees

SELECT   COUNT(DISTINCT department) as "no of departments"  
from employees

SELECT COUNT(DISTINCT city) as "no of unique cities" 
from employees

SELECT COUNT(DISTINCT designation) as "total designations"
from employees

SELECT emp_name, salary as "Monthly Salary"
from employees

SELECT emp_name as "Employee Name", department as "Department Name"
from employees

SELECT emp_name, salary, salary * 12 as "Annual Salary"
from employees

SELECT emp_name as "Name :", salary as "Income :"
from employees

SELECT COUNT(*) as "Total Employee count"
from employees

SELECT COUNT(*) as "Employees working in it"
from employees
WHERE department = "IT"

SELECT COUNT(*)
from employees
WHERE department ="HR"

SELECT department,COUNT(*) as "emp in each dep"
from employees
GROUP BY department

SELECT city, COUNT(*)
from employees
GROUP BY city

SELECT designation, COUNT(*)
from employees
GROUP BY designation

SELECT department, COUNT(*) as "Employee count"
from employees
GROUP BY department

SELECT SUM(salary)
from employees

SELECT SUM(salary)
from employees
WHERE department = "IT"

SELECT department,SUM(salary) as "Total salary"
from employees
GROUP BY department

SELECT city,SUM(salary)
from employees
GROUP BY city

SELECT designation,SUM(salary)
from employees
GROUP BY designation

SELECT department, SUM(salary)
from employees
WHERE department IN("IT","HR","Finance")
GROUP BY department

-- round 5
SELECT AVG(salary)
from employees

SELECT AVG(salary)
from employees
WHERE department = "IT"

SELECT department, AVG(salary)
from employees
GROUP BY department

SELECT city, AVG(salary)
from employees
GROUP BY city

SELECT department, AVG(salary)
from employees
GROUP BY department
HAVING AVG(salary) > 55000

SELECT city, AVG(salary)
from employees
GROUP BY city
HAVING AVG(salary) > 55000

-- stopped at problem 30 at september 24

SELECT MIN(salary) as min_sal
from employees

SELECT MAX(salary)
from employees

SELECT department, MIN(salary)
from employees
GROUP BY department

SELECT department, MAX(salary)
from employees
GROUP BY department

SELECT city, MIN(salary)
from employees
GROUP BY city

SELECT city , MAX(salary)
from employees
GROUP BY city

SELECT department, MIN(salary), MAX(salary)
from employees
GROUP BY department

SELECT department, COUNT(*)
from employees
GROUP BY department

SELECT department, SUM(salary), AVG(salary),
MIN(salary), MAX(salary), COUNT(*)
from employees
GROUP BY department

SELECT city, SUM(salary), AVG(salary)
from employees
GROUP BY city

SELECT designation, AVG(salary)
from employees
GROUP BY designation

SELECT department, COUNT(*)
from employees
GROUP BY department
HAVING COUNT(*) > 3

SELECT city, COUNT(*) as totals
from employees
GROUP BY city
HAVING totals > 2

SELECT department, SUM(salary) as sums
from employees
GROUP BY department
HAVING sums > 150000

SELECT department, MAX(salary) as maxs
from employees
GROUP BY department
HAVING maxs > 8000

SELECT department
from employees
GROUP BY department
HAVING MIN(salary) < 45000

SELECT department, AVG(salary)
from employees
GROUP BY department
HAVING AVG(salary) > 60000

SELECT department
from employees
GROUP BY department
HAVING AVG(salary) BETWEEN 45000 and 70000

SELECT department, SUM(salary) as totals
from employees
GROUP BY department
HAVING totals > 200000

SELECT designation, AVG(salary) as sals
from employees
GROUP BY designation
HAVING sals > 50000

-- round 9

SELECT department, COUNT(*)
from employees
WHERE salary > 45000
GROUP BY department

SELECT department,  AVG(salary)
from employees
WHERE salary > 45000
GROUP BY department

SELECT department, SUM(salary)
from employees
WHERE city in ('bangalore','chennai','hyderabad')
GROUP BY department

SELECT department, AVG(salary)
from employees
WHERE department in ('IT','HR')
GROUP BY department

SELECT *
from employees
WHERE joining_date > '2022-01-01'

SELECT department
from employees
WHERE salary > 40000 
GROUP BY department
HAVING COUNT(*) > 3

-- round 10

SELECT CONCAT(emp_name) as 'full name'
from employees

SELECT CONCAT(emp_name,' works in ',department)
from employees

SELECT CONCAT(emp_name,' - ',designation)
from employees

SELECT CONCAT(emp_name, ' earns ',salary)
from employees

-- round 11

SELECT SUBSTRING(emp_name,1,5)
from employees

SELECT emp_name, SUBSTRING(city,1,3)
from employees

SELECT DISTINCT SUBSTRING(department,1,4)
from employees

SELECT SUBSTRING(emp_name,2,5)
from employees

SELECT emp_name, SUBSTRING(emp_name,1,3) as "first 3 letters"
from employees

-- round 12

CREATE TABLE messy_employees (
    emp_id INT,
    emp_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO messy_employees VALUES
(1, '  Rahul  ', '  Bangalore'),
(2, ' Priya', 'Chennai  '),
(3, '  Arjun Kumar', '  Hyderabad  '),
(4, 'Sneha  ', ' Bangalore '),
(5, '   Kiran   ', 'Mumbai');

SELECT * from messy_employees

SELECT emp_name, TRIM(emp_name) as "cleaned name"
from messy_employees

SELECT TRIM(city)
from messy_employees

SELECT emp_name as "original name", TRIM(emp_name) as "clean name"
from messy_employees

-- round 13

SELECT city, REPLACE(city,'Bangalore','bengaluru') as city
from employees

SELECT emp_name, REPLACE(emp_name,' ','_') as emp_name
from employees

SELECT designation, REPLACE(designation,'Developer','Software Developer')
from employees

SELECT department, REPLACE(department,'IT','Information Technology')
from employees

SELECT REPLACE(emp_name,' ','-')
from employees

-- round 14

SELECT NOW()

SELECT emp_name, NOW()
from employees

SELECT emp_name, CURRENT_DATE()
from employees

-- round 15

SELECT DATEDIFF(NOW() , joining_date) as "days they worked"
from employees

SELECT emp_name,joining_date,DATEDIFF(NOW() , joining_date) as "days they worked"
from employees

SELECT *
from employees
WHERE DATEDIFF(NOW(),joining_date) > 1000

SELECT *
from employees
WHERE DATEDIFF(NOW(),joining_date) < 1000

SELECT emp_name, DATEDIFF(NOW(),joining_date) as diff_date
from employees
ORDER BY diff_date DESC LIMIT 10

-- round 16

SELECT emp_name, joining_date, DATE_ADD(joining_date, INTERVAL 1 YEAR)
from employees

SELECT emp_name,joining_date, DATE_ADD(joining_date, INTERVAL 6 MONTH)
from employees

SELECT emp_name, DATE_ADD(joining_date, INTERVAL 30 DAY)
from employees

SELECT emp_name, DATE_ADD(joining_date, INTERVAL 1 YEAR) < CURRENT_DATE()
from employees

SELECT DATE_ADD(joining_date, INTERVAL 90 DAY)
from employees

-- round 17

SELECT CONCAT(department,' has ',COUNT(*),' employess')
from employees
GROUP BY department

SELECT CONCAT(department,' - Average Salary: ',AVG(salary))
from employees
GROUP BY department

SELECT DISTINCT CONCAT('Department: ',department,' | Employees: ',COUNT(*),' | Total salary: ',SUM(salary))
from employees
GROUP BY department

-- round 18

SELECT department, SUM(DATEDIFF(NOW(),joining_date))
from employees
GROUP BY department

SELECT department, MIN(joining_date)
from employees
GROUP BY department

SELECT department, MAX(joining_date)
from employees
GROUP BY department

SELECT department, AVG(DATEDIFF(NOW(),joining_date)) > 1000
from employees
GROUP BY department

-- round 19

SELECT city, SUM(salary),MIN(salary),MAX(salary)
from employees
GROUP BY city

SELECT *
from employees
WHERE joining_date > '2022-01-01' and salary > 45000

SELECT CONCAT('Department: ', department,' employees ',count(*), ' average sal',
AVG(salary), 'total salary', SUM(salary), 'higgest salary ',MAX(salary),'min salary',
MIN(salary))
from employees
GROUP BY department
HAVING (COUNT(*) >= 3) and AVG(salary) > 50000
ORDER BY AVG(salary) DESC