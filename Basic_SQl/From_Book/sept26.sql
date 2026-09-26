GRANT SELECT, INSERT, UPDATE on employees to 'sujith123';

SHOW TABLES

SELECT * from employee_data

START TRANSACTION

UPDATE employee_data SET salary = salary - 10000 WHERE emp_id = 1;
UPDATE employee_data SET salary = salary + 10000 WHERE emp_id = 2;
COMMIT

SELECT * from employee_data

START TRANSACTION

INSERT into employee_data VALUES (7,'wang xun',96500,'Hacking department')

UPDATE employee_data SET salary = salary - 10000 WHERE emp_id = 7

COMMIT

SELECT * from employee_data

START TRANSACTION
UPDATE employee_data SELECT salary= NULL WHERE emp_id = 10000
ROLLBACK

START TRANSACTION
INSERT into employee_data VALUES (101,'sujith',850000,'cloud')
SAVEPOINT emp101
UPDATE employee_data SET salary = 5000 WHERE emp_id = 0
ROLLBACK to emp101
COMMIT

SELECT UPPER(emp_name) from employee_data

SELECT emp_name, LENGTH(emp_name) as 'length of name'
from employee_data

SELECT SUBSTRING(emp_name,1,5)
from employee_data

SELECT ABS(-456.2568) as ABS

SELECT CURDATE();

SELECT CAST('458.699' as DECIMAL(10,2))

SELECT FORMAT(12345678.9101112,2)

SELECT salary, IF(salary> 50000, 'highr salary','low salary') as 'salary things'
from employee_data

SELECT emp_name,salary,
    CASE 
        WHEN  salary >= 90000 THeN 'good'
        WHEN salary >= 80000 THEN 'not bad'
        WHEN salary >= 50000 then 'woww'
        else 'tata'
    END as salary
from employee_data

SELECT GROUP_CONCAT(emp_name) from employee_data

