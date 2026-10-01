SELECT * FROM employees

with high_sal as (
    SELECT * from employees
    WHERE salary > 70000
)
SELECT * from high_sal

with dep_avg as (
    SELECT department,AVG(salary) as avg_sals
    from employees
    GROUP BY department
)
SELECT * FROM dep_avg
-- WHERE avg_sals > 60000

SELECT * FROM employee_data

with depjoin as (
    SELECT
    ed.emp_name,
    e.name,
    ed.department,
    e.department as employ_deps
    from employee_data ed LEFT join employees e
    on ed.emp_id = e.id
)
SELECT * FROM depjoin

with 
dep_avg as (
    SELECT department,AVG(salary) as avg_salas
    FROM employees
    GROUP BY department
),
high_sal as (
    SELECT * from dep_avg
    WHERE avg_salas > 60000
)
SELECT * FROM high_sal

with ranked_emps as (
    SELECT name,department,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) as sal_rank
    FROM employees
)
SELECT * FROM ranked_emps
WHERE sal_rank = 1

with RECURSIVE numbers as (
    SELECT 1 as n
    UNION ALL
    SELECT n+1
    from numbers
    where n < 5
)
SELECT * FROM numbers

with high_salary as (
    SELECT name,department,salary
    from employees
    ORDER BY salary DESC
)
SELECT * FROM high_salary

with dep_avg as (
    SELECT department, AVG(salary) as dep_avg_sal
    FROM employees
    GROUP BY department
)
SELECT * FROM dep_avg
WHERE dep_avg_sal > 60000

with deps as (
    SELECT name,department,
    RANK()OVER(PARTITION BY department ORDER BY salary DESC)as sal_high 
    FROM employees
)
SELECT * FROM deps
WHERE sal_high = 1

with RECURSIVE nums as (
    SELECT 1 as n
    UNION ALL
    SELECT n+1
    from nums
    WHERE n < 10
)
SELECT * FROM nums