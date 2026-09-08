-- the below code should be compiled in oracle not in my sql !
select * from dual

select sysdate from dual

select 'sujith'||' kumar' from dual

select 'sujith'||' '||'kumar'||' G' as "full name" from dual

select 'sachin'||250||'bye'||null from dual

select current_date from dual

select 'sujith'||current_date from dual

select sysdate||current_date from dual

SELECT initcap(child_name) from school
WHERE initcap(child_name) like "A%n"

SELECT child_name, EXTRACT(day from admision) as "day joined",
EXTRACT(month from admision) as "month joined",
EXTRACT(YEAR from admision) as "year joined"
from school

SELECT child_name , EXTRACT(MONTH from admision) as "birth month"
from school
WHERE EXTRACT(MONTH from admision) > 6 fetch first 3 rows ONLY

SELECT BETWEEN('2026-12-12','2023-12-12') from dual

SELECT child_name, BETWEEN(birth_date,admission_date) from school

