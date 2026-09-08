
SELECT * from employee

SELECT COUNT(name) from employee

SELECT COUNT(emp_id) from employee

SELECT COUNT(designation) as "count of designation" from employee

SELECT COUNT(DISTINCT emp_salary) from employee

SELECT COUNT(*) from employee
WHERE emp_salary > 7000

SELECT SUM(emp_salary) as "total sal spent on emp" from employee

SELECT AVG(emp_salary) as "avg sal of proj" from employee
WHERE emp_salary > 7000

SELECT MAX(emp_salary) as "big salary in dep" from employee

SELECT * from departments

SELECT MIN(emp_salary) as "lowest sal" from employee
WHERE emp_salary is not NULL

