SHOW DATABASES

SHOW tables 

SELECT * from emp_al

select salary + 10000 from emp_al WHERE first_name = "sujith"

desc emp_al

SELECT first_name , salary + 10000 as "New Salary"
from emp_al

SELECT * from emp_al

select id,first_name, salary + (salary * 0.10) as "10% salary"
from emp_al

SELECT first_name , salary * 6 as "Half yearly Salary"
from emp_al

select first_name , salary *12 /2 as "1/2 yearly salary"
from emp_al

SELECT first_name from emp_al
WHERE salary % 5000 = 0

