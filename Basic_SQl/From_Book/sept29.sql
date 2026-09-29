SELECT * from employee_data

SELECT * FROM departments

SELECT * FROM product

SELECT * FROM sales

SELECT product.product_name, sales.sale_date
from product
left join sales on product.product_id = sales.sale_id

SELECT product.product_price,product.product_name, sales.sale_date
from product
RIGHT join sales on product.product_id = sales.sale_id

SELECT   p.product_name, s.sale_date FROM
product p CROSS join sales s
-- WHERE p.product_id = s.product_id

SELECT * FROM employee_data

SELECT emp_name, IF(department="Cloud", CONCAT(department,'*'),department) as "dislayed department"
from employee_data

CREATE view emp_deps as 
SELECT emp_name,department from employee_data

SELECT * from emp_deps

SELECT * FROM employees

CREATE View dep_avg as 
SELECT department, AVG(salary) as "department average"
from employees
GROUP BY department
ORDER BY AVG(salary) DESC

SELECT * FROM dep_avg

CREATE EVENT sendemail
on SCHEDULE EVERY 1 WEEK STARTS '2026-10-01 08:00:00'
DO 
insert into emailque(rec_email,subject,message)
SELECT email,'upcoming event remainder','you have a meeting for the next week'
from events 
where event_date = DATE_ADD(CURRENT(), INTERVAL 7 DAY)

DROP sendemail

