SHOW TABLES

desc drives

SELECT * from drives

INSERT into drives VALUES
(219,"Front End Developer", 75000,"2026-08-09"),
(220,"Backend Developer", 85000,"2026-05-11"),
(221,"Data Developer", 95000,"2026-05-12"),
(222,"Software Developer", 65000,"2026-06-04")

SELECT * from drives
WHERE package BETWEEN 65000 and 750000

SELECT * from drives
WHERE driva_date BETWEEN "2026-01-01" and "2026-04-05"

SELECT role_name, driva_date from drives
WHERE drive_id BETWEEN 212 and 220

SELECT * FROM drives
where role_name = "Backend Developer"
or role_name = "Software Developer"
or role_name = "Front End Developer"

SELECT * FROM drives
WHERE role_name in ("Software Developer","Backend Developer")

SELECT * from  drives
WHERE driva_date in ("2026-06-07","2026-08-08","2026-05-11")

