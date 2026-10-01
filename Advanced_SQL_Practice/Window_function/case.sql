SELECT
name,
salary,
CASE 
    WHEN salary >= 75000 THEN  "High"
    when salary >= 60000 then "medium"
    ELSE  "low"
END as sala_category
from employees

SELECT
name,salary,department,
CASE 
    WHEN department = 'IT' and salary>= 55000 THEN  "senior IT dev"
    WHEN department ='HR' and salary >= 65000 then "Senior HR salary"
    ELSE  "other"
END
from employees

SELECT 
name,
CASE 
    WHEN department in ('IT','HR') THEN  "corporate"
    ELSE  "other"
END
FROM employees

SELECT 
name,
department,
CASE 
    WHEN salary BETWEEN 50000 and 60000 THEN  "Entry"
    WHEN salary BETWEEN 60001 and 75000 then "MId"
    ELSE  "low"
END
FROM employees

SELECT 
COUNT(CASE 
    WHEN salary >= 50000  THEN 1
END) as "count of the high sals"
FROM employees

SELECT 
SUM(CASE 
    WHEN salary >= 50000  THEN 1
    else 0
END) as "sum of the high sals"
FROM employees

SELECT 
name,department
FROM employees
ORDER BY
CASE 
    WHEN department = 'it' THEN  1
    WHEN department = 'HR' then 2
    ELSE  3
END

SELECT 
CASE 
    WHEN salary >= 75000 THEN 'High'  
    WHEN salary >= 50000 then 'medium'
    ELSE  'low'
END as sal_cat,COUNT(*)
FROM employees
GROUP BY
CASE 
    WHEN salary >= 75000 THEN 'High'  
    WHEN salary >= 50000 then 'medium'
    ELSE  'low'
END

SELECT * FROM employees

UPDATE employees
SET salary =
CASE 
    WHEN salary < 50000 THEN  salary * 1.10
    ELSE  salary * 1.05
END

SELECT 
name,
CASE 
    WHEN department = "IT" THEN  
        CASE 
            WHEN salary >= 50000 THEN  "senior IT"
            ELSE  "junior IT"
        END
    ELSE  "Non - IT"
END 
FROM employees

SELECT 
name,
salary,
CASE 
    WHEN department ='IT' and salary >= 60000 THEN 'senior IT' 
    WHEN department ='HR' and salary >= 60000 THEN 'senior HR' 
    ELSE  'junior'
END
FROM employees

SELECT 
department,
COUNT(*),
SUM(
    CASE 
        WHEN salary >= 70000 THEN  1
        ELSE  0
    END
)
FROM employees
GROUP BY department

SELECT 
CASE 
    WHEN salary >= 65000 THEN  "High"
    WHEN salary >= 50000 then "mid"
    ELSE  "every"
END as sal_category,
COUNT(*)as  emp_count,
AVG(salary) as avg_sal
FROM employees
GROUP BY sal_category

