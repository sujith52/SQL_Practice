SELECT name, nvl(birth_date,'01-01-2023') as "birthdate"
from worker_details

SELECT worker_name, nvl(dependency,0) from worker_details

select worker_name, NVL2(dependency,'Present','Absent')
from worker_details

SELECT worker_name, NVL2(worker_age,worker_age,'No_age')
from worker_details

SELECT TO_DATE(20231120,'YYYY-MM-DD') from dual

SELECT TO_date('20FEB2023','DD-MON-YYYY') from dual

SELECT to_char(1234,'$9999') from dual

SELECT to_char(3497.54,'$9999.9999') from dual

SELECT birth_date , to_char(birth_date,'Month YYYY'),
to_char(birth_date,'MON-YYYY'),
to_char(birth_date,'DD-MON-YYYY'),
to_char(birth_date,'DDth-MON-YYYY'),
to_char(birth_date,'Day'),
to_char(birth_date,'HH:MI AM'),
to_char(birth_date,'YYYY-MM-DD'),
to_char(birth_date,'Q YYYY'),
to_char(birth_date,'WW YYYY'),
to_char(birth_date,'CC')
from worker_details

select worker_name, to_number(worker_age) + 3 as "added 3 years"
from worker_details where worker_id > 3 

SELECT worker_name, to_number(to_char(worker_date, 'DD')) + 10 as '10 days added'
from worker_details



