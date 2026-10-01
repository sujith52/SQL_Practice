SELECT * FROM sales

drop table sales

CREATE TABLE sales (
    id INT PRIMARY KEY,
    department VARCHAR(50),
    month_name VARCHAR(20),
    amount INT
);

INSERT INTO sales VALUES
(1, 'IT', 'January', 10000),
(2, 'IT', 'February', 12000),
(3, 'IT', 'March', 15000),
(4, 'HR', 'January', 8000),
(5, 'HR', 'February', 9000),
(6, 'HR', 'March', 11000),
(7, 'Sales', 'January', 14000),
(8, 'Sales', 'February', 16000),
(9, 'Sales', 'March', 18000);

SELECT department,
SUM(
    CASE 
        WHEN month_name = "january"
        then amount
        ELSE  0
    END
) as january,
SUM(
    CASE 
        WHEN month_name = "february"
        then amount
        ELSE  0
    END
) as february
FROM sales
GROUP BY department

SELECT * FROM employees

SELECT department,
COUNT(
    CASE 
        WHEN department = "IT" THEN  1
        ELSE  0
    END
) as IT_emps,
COUNT(
    CASE 
        WHEN department="HR" THEN  1
        ELSE  0
    END
)as HR_emps
FROM employees
GROUP BY department

SELECT 
department,
SUM(CASE 
    WHEN month_name="january" THEN  amount
    ELSE  0
END) as jan,
SUM(
    CASE 
        WHEN month_name="february" THEN  amount
        ELSE  0
    END
) as feb
FROM sales
GROUP BY department

