SELECT * from drives

INSERT INTO drives VALUES
(224,"Null developer",NULL,"2026-08-12")

SELECT * from drives
WHERE driva_date is NULL

SELECT * FROM drives
WHERE driva_date is NOT NULL

-- like and not like 

SELECT * from drives
WHERE role_name LIKE "%Data%"

SELECT * FROM drives
WHERE role_name LIKE "%Dev%"

SELECT * from drives
WHERE role_name like "%Developer"

SELECT * from drives
WHERE package LIKE "5%"

SELECT * FROM drives
WHERE driva_date LIKE "2026%"

SELECT * from drives
WHERE role_name LIKE "____T%"

SELECT * FROM drives
WHERE role_name LIKE "s%" and role_name LIKE "%developer"

SELECT * FROM drives
WHERE role_name LIKE "S%developer"

SELECT * FROM drives
WHERE role_name  NOT LIKE "software%"

SELECT * FROM drives
WHERE driva_date NOT LIKE "2026%"

