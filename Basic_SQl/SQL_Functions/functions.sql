show TABLES

SELECT * from  drives

SELECT UPPER("Sujith")

SELECT LOWER("Kuamr")

SELECT REVERSE("Sujith")

SELECT CONCAT("Sujith","Kuamr")

SELECT UPPER (role_name) as "Position Name" from drives

SELECT UPPER(role_name) as "Position" from drives
WHERE drive_id = 214

SELECT UPPER("Ai research intern") as "Intern"

SELECT LOWER(role_name)  from drives

SELECT LOWER("Hello SUJITH") as "Fullname"

SELECT role_name, LENGTH(role_name) as "Name Length"
from drives

SELECT role_name from drives
WHERE LENGTH(role_name) > 14

SELECT REVERSE(role_name) from drives
WHERE drive_id = 212

SELECT * FROM drives

SELECT drive_id, REVERSE(role_name) from drives
where REVERSE(role_name) like "%tn%"

SELECT LENGTH(REVERSE(role_name)) as "reveresed length" from drives

SELECT CONCAT(role_name, driva_date) as "Drive info" from drives

SELECT CONCAT(drive_id, "-", role_name) from drives
WHERE drive_id = 212

SELECT CONCAT(role_name,"- Bengaluru") from drives

SELECT CONCAT("1111","2222")

SELECT CONCAT(5555,"Sujith")

SELECT CONCAT("akash",NULL)

SELECT CONCAT(1010,1111)

