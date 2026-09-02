show TABLES

CREATE Table drives(
    drive_id int PRIMARY KEY,
    role_name VARCHAR(60),
    package INT,
    driva_date DATE
)

INSERT into drives VALUES
(212, "Software Developer", 500000, "2026-06-07"),
(213, "Backend Developer", 500000, "2026-05-06"),
(214, "Front End Developer", 500000, "2026-03-05"),
(215, "UI UX Developer", 500000, "2026-01-02"),
(216, "Data Administration", 500000, "2026-08-04"),
(217, "Software Developer", 500000, "2026-08-08"),
(218, "Backend Developer", 500000, "2026-05-06")

SELECT * FROM drives
where role_name = "Software Developer" 
OR role_name = "Backend Developer"

SELECT * from drives 
WHERE driva_date > "2026-08-07"
and package > 450000

SELECT * from drives 
WHERE driva_date > "2026-08-07"
OR package > 450000

SELECT * from drives
where package > 450000
and (role_name = "Front End Developer" or role_name = "Data Administration")

SELECT * from drives
WHERE package <= 500000 
and driva_date <= "2026-07-22"

