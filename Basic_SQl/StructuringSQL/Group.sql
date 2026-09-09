CREATE TABLE emps(
    emp_id int PRIMARY KEY,
    designation varchar(50),
    salary INT,
    dep_id INT
)

insert INTO emps VALUES
(212,"Software Developer",50000,1),
(213,"front end Developer",45000,1),
(214,"Backend Developer",60000,1),
(215,"Software Developer",52000,2),
(216,"front end Developer",68000,2),
(217,"Backend Developer",72000,2),
(218,"Software Developer",48000,3),
(219,"front end Developer",30000,3),
(220,"Backend Developer",48000,3)


SELECT * from emps

SELECT dep_id, MAX(salary) FROM emps
GROUP BY dep_id

SELECT dep_id, MAX(salary) 
from emps
GROUP BY dep_id
HAVING MAX(salary) > 50000

SELECT dep_id, AVG(salary) as avg_sal
from emps
GROUP BY dep_id
HAVING avg_sal > 50000

SELECT * from emps
ORDER BY salary ASC LIMIT 3

SELECT * from emps
ORDER BY salary, dep_id ASC LIMIT 5

SELECT dep_id, AVG(salary)
from emps
GROUP BY dep_id
ORDER BY AVG(salary) DESC 