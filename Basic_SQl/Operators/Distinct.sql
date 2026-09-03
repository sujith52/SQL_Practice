SELECT * from drives

SELECT DISTINCT role_name from drives

SELECT distinct package from drives

select distinct package from drives
where package < 100000

SELECT DISTINCT driva_date from drives
WHERE driva_date like "%05%"

SELECT DISTINCT role_name from drives
where role_name not like "%front%"

-- learning the limit and offset 

SELECT * FROM drives

SELECT * from drives LIMIT 2

SELECT * FROM drives LIMIT 2 offset 3

SELECT * from drives 
where role_name = "Backend Developer" LIMIT 2 OFFSET 1

SELECT * from drives
WHERE role_name like "%soft%" LIMIT 10 OFFSET 1

SELECT * from drives
WHERE role_name like "%Developer"
LIMIT 2 OFFSET 2

