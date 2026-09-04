SELECT * from  drives

SELECT role_name from drives
WHERE role_name LIKE "______________"

SELECT SUBSTR(role_name,1,10) from drives
WHERE drive_id = 212

SELECT SUBSTR(role_name, 4) from drives
WHERE drive_id=215

SELECT SUBSTR("Punith rajkumar",8,3)

SELECT SUBSTR("punith rajkumar",-8,3)

SELECT SUBSTR("Pawan kalyan",6,4)

SELECT INSTR(role_name, "S"), role_name from drives

SELECT INSTR(role_name, "soft") from drives

SELECT INSTR("KODNEST","n")

SELECT INSTR(role_name,"S") from drives 
WHERE role_name LIKE "%r"

SELECT SUBSTR(role_name,INSTR(role_name,"r")) from drives

SELECT substr(role_name,INSTR(role_name,"B"),4) from 

select TRIM(LEADING from "  Sujith Kumar")

SELECT TRIM(TRAILING from "  sujith  ")

SELECT TRIM(BOTH from "  sujith  ")

SELECT * from drives

INSERT into drives VALUES(225,"  sujith  dev  ",85000, "2026-08-09")

SELECT TRIM(BOTH from role_name) from drives

SELECT TRIM(role_name) from drives

SELECT LPAD(drive_id,5,0) from drives

SELECT RPAD(drive_id,5,0) from drives

SELECT RPAD(drive_id,30,"*") from drives

SELECT RPAD("Hello",10,"*")

SELECT RPAD(120,6,0)

SELECT * from drives

SELECT RIGHT(role_name,5) FROM  drives

SELECT LEFT(role_name,5) from drives

SELECT left(role_name,3) from drives
WHERE drive_id = 214

SELECT RIGHT(role_name,7) from drives

SELECT RIGHT(role_name,7) from drives
WHERE drive_id = 214

SELECT ASCII("Sujith")

SELECT ASCII("S")

SELECT ASCII(role_name) from drives

SELECT ASCII(SUBSTR(role_name,2,1)) from drives