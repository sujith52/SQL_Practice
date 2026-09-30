drop table employees

CREATE Table employees(
    id int PRIMARY KEY,
    name VARCHAR(60),
    department VARCHAR(50),
    salary INT
)

insert INTO employees VALUES
(1,"sujith","IT",60000),
(2,"sreejas","HR",80000),
(3,"lathas","IT",50000),
(4,"vinithas","HR",60000),
(5,"chandana","IT",40000)

SELECT department, AVG(salary)
from employees
GROUP BY department

SELECT name,department,salary,
AVG(salary) over (PARTITION BY department) as dep_avg
FROM employees

SELECT name,department,salary,
sum(salary) over (PARTITION BY department) as dep_sum
FROM employees

SELECT name,department,salary,
COUNT(*) over (PARTITION BY department ORDER BY salary DESC) as dep_nums
FROM employees

SELECT name,department,
ROW_NUMBER() OVER(ORDER BY salary DESC) as row_nums
FROM employees

SELECT name, department,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC)
as "salary rank for dep"
FROM employees

SELECT name,department,
RANK() OVER(ORDER BY salary DESC)
FROM employees

SELECT name,department,
DENSE_RANK() OVER(ORDER BY salary DESC)
FROM employees

SELECT name,salary,
LEAD(salary)OVER(ORDER BY id )as "next sals"
FROM employees

SELECT name,salary,
LAG(salary)OVER(ORDER BY id )as "next sals"
FROM employees

SELECT name,department,salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) as "sal by dep",
RANK() OVER(PARTITION BY department ORDER BY salary DESC) as "sal rank",
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) as "dense_sal rank",
LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) as "previous sal"
FROM employees

SELECT name,department,salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) as "salary rank"
FROM employees

SELECT name,department,salary,
ROW_NUMBER()OVER(PARTITION BY department ORDER BY salary DESC) as "dep sal ranks"
FROM employees

SELECT name,salary,
RANK()OVER(ORDER BY salary DESC) as "rank salary",
DENSE_RANK() OVER(ORDER BY salary DESC) as "lead salary"
FROM employees

SELECT name,department,salary,
LAG(salary)OVER(ORDER BY salary DESC) as "previous sal"
FROM employees

SELECT name,department,salary,
LAG(salary)OVER(PARTITION BY department ORDER BY salary ) as "previous sal",
LEAD(salary)OVER(PARTITION BY department ORDER BY salary ) as "next salary"
FROM employees

