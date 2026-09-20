CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    designation VARCHAR(30),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(30),
    manager_id INT
);

INSERT INTO employees VALUES
(101, 'Rahul', 'IT', 'Developer', 55000.00, '2023-01-15', 'Bangalore', 105),
(102, 'Priya', 'HR', 'HR Executive', 42000.00, '2022-06-10', 'Chennai', 106),
(103, 'Arjun', 'IT', 'Tester', 48000.00, '2023-03-20', 'Hyderabad', 105),
(104, 'Sneha', 'Finance', 'Accountant', 50000.00, '2021-11-05', 'Bangalore', 107),
(105, 'Vikram', 'IT', 'Manager', 85000.00, '2020-02-18', 'Bangalore', NULL),
(106, 'Meena', 'HR', 'Manager', 78000.00, '2019-08-25', 'Chennai', NULL),
(107, 'Kiran', 'Finance', 'Manager', 82000.00, '2018-04-12', 'Mumbai', NULL),
(108, 'Anjali', 'IT', 'Developer', 62000.00, '2024-01-10', 'Pune', 105),
(109, 'Rohit', 'Sales', 'Sales Executive', 39000.00, '2023-07-22', 'Delhi', 110),
(110, 'Neha', 'Sales', 'Manager', 75000.00, '2020-09-30', 'Delhi', NULL),
(111, 'Suresh', 'IT', 'Developer', NULL, '2024-05-14', 'Bangalore', 105),
(112, 'Divya', 'HR', 'Recruiter', 45000.00, NULL, 'Chennai', 106);

SELECT * from employees

SELECT emp_name, salary from employees

SELECT emp_name, department, designation from employees

SELECT emp_name, city from employees

SELECT emp_name
from employees WHERE department = "IT"

SELECT emp_name from employees
WHERE salary > 50000

SELECT emp_name from employees
WHERE salary <= 50000

SELECT emp_name from employees
WHERE city = "Bangalore"

SELECT emp_name, designation from employees
WHERE designation = "developer"

SELECT emp_name from employees
WHERE salary = 55000

SELECT emp_name from employees
WHERE salary < 60000

SELECT emp_name from employees
WHERE salary <= 50000

SELECT emp_name, department from employees
WHERE department != "IT"

SELECT emp_name from employees
WHERE salary > 45000

SELECT emp_name, department, salary from employees
WHERE department = "it" and salary > 50000

SELECT emp_name, department from employees
WHERE department = "IT" or department ="hr"

SELECT emp_name, city,salary from employees
WHERE city = "bangalore" and salary > 50000

SELECT emp_name,department from employees
WHERE department = "It" and designation = "developer"

SELECT emp_name from employees
WHERE salary > 60000 and city = "bangalore"

SELECT emp_name, department from employees
WHERE department in ("IT","Hr","finance")

SELECT emp_name, city from employees
WHERE city in ("bangalore","chennai","delhi")

SELECT emp_name, designation from employees
WHERE designation in ("developer","manager","tester")

SELECT emp_name, salary from employees
WHERE salary  BETWEEN 40000 and 60000

SELECT emp_name, salary from employees
WHERE salary  BETWEEN 45000 and 80000

SELECT emp_name, joining_date from employees
WHERE joining_date BETWEEN "2022-01-01" and "2023-12-31"

SELECT emp_name FROM employees
WHERE emp_name LIKE "A%"

SELECT emp_name FROM employees
WHERE emp_name LIKE "%a"

SELECT emp_name FROM employees
WHERE emp_name LIKE "%an%"

SELECT emp_name,city FROM employees
WHERE city LIKE "b%"

SELECT emp_name, designation FROM employees
WHERE designation LIKE "%manager%"

SELECT emp_name,salary FROM employees
ORDER BY salary

SELECT emp_name,salary FROM employees
ORDER BY salary DESC

SELECT emp_name,salary FROM employees
ORDER BY emp_name

SELECT emp_name,joining_date FROM employees
ORDER BY joining_date

SELECT emp_name,joining_date FROM employees
ORDER BY joining_date DESC

-- stopped at 42 question in my sql phase one !

SELECT emp_name,salary from employees
ORDER BY salary DESC
LIMIT 5

SELECT emp_name,salary from employees
ORDER BY salary 
LIMIT 3

SELECT emp_name from employees
ORDER BY emp_name 
LIMIT 5

SELECT emp_name,salary from employees
ORDER BY salary DESC
LIMIT 1

INSERT INTO employees VALUES
(113,"Sujith","IT","Developer",58000,"2024-06-01","madanapalle",105)

INSERT INTO employees VALUES
(114,"sreeja","IT","Developer",NULL,"2024-06-01","madanapalle",105)

INSERT INTO employees VALUES
(115,"latha","IT","Developer",68000,"2024-11-01","madanapalle",NULL)

SELECT * from employees

UPDATE employees SET salary = 60000
WHERE emp_name = "sujith"

UPDATE employees SET city = "Bangalore"
WHERE emp_name = "anjali"

UPDATE employees SET department = "Marketing"
WHERE emp_id = 109

UPDATE employees SET salary = salary * 1.10
WHERE department = "IT"

UPDATE employees SET designation = "Junior Executive"
WHERE salary < 40000

SELECT * from employees

ROLLBACK

DELETE from employees 
WHERE emp_id = 113

DELETE from employees
WHERE department = "Marketing"

SELECT emp_name, salary from employees
WHERE salary < 40000

DELETE from employees
WHERE salary < 40000

SELECT emp_name, salary from employees
WHERE salary is NULL

SELECT emp_name, salary from employees
WHERE salary is not NULL

SELECT emp_name from employees
WHERE joining_date is NULL

SELECT emp_name from employees
WHERE manager_id is NULL

SELECT emp_name,COALESCE(salary,0) from employees

SELECT emp_name, coalesce(joining_date,"Not provided") 
from employees

SELECT emp_name , coalesce(manager_id,"No Manager")
from employees

SELECT emp_name,salary,department from employees
WHERE department = "IT"
ORDER BY salary DESC
LIMIT 3

SELECT emp_name,salary,department from employees
WHERE department = "IT" or department = "HR" 
and salary > 45000

SELECT emp_name,salary,city from employees
WHERE city = "bangalore" or "chennal"
and salary BETWEEN 40000 and 80000

SELECT emp_name from employees
WHERE emp_name LIKE "s%" or emp_name LIKE "%a"

SELECT emp_name,salary,department from employees
WHERE department NOT in("Hr") 
and salary is NOT NULL
and salary > 45000

SELECT emp_name,salary,department,city from employees
WHERE department in("it","hr","finance")
and city in ("bangalore","chennai","hyderabad")
and salary BETWEEN 40000 and 80000
and salary is not NULL
ORDER BY salary DESC
LIMIT 5