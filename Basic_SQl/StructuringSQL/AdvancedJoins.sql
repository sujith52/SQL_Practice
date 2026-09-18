CREATE Table passengers(
    pass_id int PRIMARY KEY,
    pass_name VARCHAR(60),
    flight_id int
)

insert INTO passengers VALUES
(1,"sujith",101),
(2,"sreeja",102),
(3,"latha",103),
(4,"vinitha",0),
(5,"pawan kalyan",102)

CREATE Table flight_details(
    flight_id int PRIMARY KEY,
    flight_num VARCHAR(20),
    destination VARCHAR(50)
)

insert INTO flight_details VALUES
(101,"AA569","Andhra Pradesh"),
(102,"C86S5","Karnataka"),
(103,"R8966A","Telangana"),
(104,"98ETY5","TamilNadu")

SELECT passengers.pass_name, flight_details.flight_num
from passengers join flight_details WHERE passengers.flight_id = flight_details.flight_id

SELECT passengers.pass_name, flight_details.flight_num
from passengers, flight_details
WHERE  passengers.pass_id = flight_details.flight_id 

SELECT * from flight_details

SELECT * from passengers

SELECT f.flight_num, COUNT(p.flight_id)
from passengers p, flight_details f
WHERE p.flight_id = f.flight_id 
GROUP BY flight_num 

SELECT f.flight_num , COUNT(p.pass_id)
from passengers p INNER JOIN flight_details f 
on p.flight_id = f.flight_id
GROUP BY flight_num

SELECT  p.pass_id,p.pass_name,f.flight_id,f.destination
from passengers p left JOIN flight_details f
on p.flight_id = f.flight_id 
UNION
SELECT  p.pass_id,p.pass_name,f.flight_id,f.destination
from passengers p RIGHT JOIN flight_details f
on p.flight_id = f.flight_id 


SELECT f.flight_num,p.flight_id,p.pass_name
from flight_details f RIGHT JOIN passengers p
on p.flight_id = f.flight_id

SELECT p.pass_id,p.pass_name,f.flight_id,f.flight_num,f.destination
from flight_details f CROSS JOIN passengers p
ORDER BY flight_id
-- WHERE p.flight_id = f.flight_id

SELECT p.pass_name
from passengers p  JOIN passengers pf 
on p.flight_id = pf.flight_id and p.pass_name != pf.pass_name
