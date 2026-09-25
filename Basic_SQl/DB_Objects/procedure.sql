SELECT * from employee_data

ALTER Table employee_data
DROP COLUMN position

CREATE Procedure EmployeeInsert (eid in int, name in VARCHAR, sal in int , dep in VARCHAR)
as begin 
INSERT INTO employee_data VALUES(eid,name,sal,dep);
end;
/

exec EmployeeInsert(301,"manager",800000,"IT")

CREATE TABLE emp (
    emp_id      NUMBER(6) PRIMARY KEY,
    emp_name  VARCHAR2(50) NOT NULL,
    sal NUMBER
);

insert into emp(emp_id,emp_name,sal) values (101,'Sujith',80000);

CREATE procedure EmpInsert (id in int, name in VARCHAR2, sal in int)
as begin 
insert into emp(emp_id,emp_name,sal)
values (id,name,sal);
end;
/

exec EmpInsert(102,'sreeja',905263)

exec EmpInsert(103,'Latha',894562)

select * from emp;

CREATE procedure ExtractInfos (ids in int, nam out VARCHAR2)
as begin
select emp_name into nam from emp where emp_id = ids;
end;
/
declare ed VARCHAR2(30);
begin ed := '';
ExtractInfos(102,ed);
DBMS_OUTPUT.PUT_LINE('Extracted Name :' || ed);
end;
/

CREATE procedure Extractid(name in VARCHAR2, id out int)
as begin
select emp_id into id from emp where emp_name = name;
end;
/

declare ids NUMBER;
begin ids:= 0;
Extractid('sreeja',ids);
DBMS_OUTPUT.PUT_LINE('Extracted id is : ' || ids);
end;
/

CREATE procedure GetSalary (id in int, salary out NUMBER)
as begin 
select sal into salary from emp where emp_id = id;
end;
/

declare salss NUMBER;
begin salss:= 0;
GetSalary(102,salss);
DBMS_OUTPUT.PUT_LINE('The Extracted Salary is : ' || salss);
end;
/