SELECT * from salaries

ALTER TABLE salaries add email VARCHAR(50)

ALTER Table salaries ADD constraint Emailunique UNIQUE (Email)

insert INTO salaries(salary,empname,email) VALUES
(80000,"sreeja","sreeja@gmail.com"),
(80000,"latha","sreeja@gmail.com")

alter Table salaries DROP constraint Emailunique

alter Table salaries add constraint Salunique check (salary between 10000 and 80000)

insert INTO salaries(salary) VALUES
(5000)

RENAME TABLE salaries to salary_emps

SELECT * FROM salary_emps

RENAME TABLE salary_emps to salaries

SELECT * from salaries

SELECT now()

DELETE  from salaries WHERE empname is  NULL

UPDATE salaries SET email = "sujith1368@proton.me" 
WHERE empname = "sujith"

ALTER Table salaries add  joinedDate DATETIME DEFAULT CURRENT_TIMESTAMP

update salaries set `joinedDate` = '2026-05-24' WHERE empid = 1

update salaries set `joinedDate` = '2026-08-19' WHERE empid = 2

update salaries set `joinedDate` = '2026-06-10' WHERE empid = 3

SELECT * from salaries

INSERT INTO salaries(`joinedDate`) VALUES
('2025-06-04')

SELECT * from salaries WHERE joinedDate < DATE_SUB(NOW() , INTERVAL 1 MONTH)

SELECT DISTINCT s.email, c.email from salaries s,customers c

SELECT email,COUNT(*) from salaries
GROUP BY email

SELECT salary as "old sal",salary + 10000 as "updated sal"
from salaries 

SELECT * from salaries
ORDER BY salary DESC

SELECT empname,salary from salaries
ORDER BY empname DESC

