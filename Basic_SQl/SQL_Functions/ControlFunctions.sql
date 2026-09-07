-- this will be mainly on the control functions !

SELECT IF(5+5=10,'True','false')

CREATE Table employee(
    emp_id int PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(50),
    phone VARCHAR(20) ,
    mobile BIGINT,
    office int,
    emp_salary INT
)

DROP Table employee

INSERT INTO employee
(emp_id, name, designation, phone, mobile, office, emp_salary)
VALUES
(1, 'Punith Kumar', 'Software Engineer', '011-1234567', 9876543210, 500100, 500000),
(2, 'Kavya Singh', 'HR Manager', '011-2345678', 8765432109, 500200, 60000),
(3, 'Priya Patel', 'Marketing Executive', '011-3456789', 7654321098, 500300, 0),
(4, 'Ayush Sharma', 'Senior Developer', '011-4567890', 6543210987, 500100, 70000),
(5, 'Avni Gupta', 'Finance Analyst', '011-5678901', 5432109876, 500400, 65000),
(6, 'Ankit Verma', 'Intern', '011-6789012', 4321098765, 500100, 0),
(7, 'Akash Kapoor', 'Manager', '011-7890123', NULL, 500500, NULL),
(8, 'Rohit Sharma', 'Sales Executive', '011-8901234', 3210987654, NULL, 60000),
(9, 'Amit Yadav', 'Research Analyst', NULL, 2109876543, 500600, 70000),
(10, NULL, NULL, NULL, NULL, NULL, NULL);

SELECT * from employee

SELECT name,designation,
IF(emp_salary > 0,'Paid','Unpaid') as "Salary Status"
from employee

SELECT name,designation,
IF(office is not null,office,"Not available") as "availability"
from employee

SELECT name, IF(emp_salary = 0,"Null",emp_salary)
from employee

SELECT name, NULLIF(emp_salary,0)
from employee

SELECT name, NULLIF(designation,"intern")
from employee

SELECT name, designation, IF(mobile is NULL,"No mobile",mobile)
from employee

SELECT name , IFNULL(mobile,"no mobile")
from employee

SELECT name, IFNULL(emp_salary,"Not available") as "salary"
from employee

SELECT emp_id, designation, COALESCE(mobile,phone,office) as "phone num"
from employee

SELECT coalesce(NULL,'sreejas',null,0,'lathas',null,1234,'sujith')

SELECT coalesce(emp_salary,mobile,phone,name) as "Some info"
from employee

