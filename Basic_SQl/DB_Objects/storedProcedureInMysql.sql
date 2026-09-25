SELECT * from employee_data

DELIMITER //
CREATE Procedure EmpInsert (in ids int, in nam VARCHAR(100),in sal int, in dep VARCHAR(100))
begin 
INSERT into employee_data VALUES(ids,nam,sal,dep);
end //
DELIMITER ;

CALL `EmpInsert`(6,'subbu',45600,'Civil Department')

SELECT * from employee_data

DELIMITER //
CREATE Procedure GetName(in id int, out nam VARCHAR(100))
begin
SELECT emp_name into nam from employee_data WHERE emp_id = id;
END //
DELIMITER ;

set @nams ='';
CALL GetName(1,@nams);
SELECT @nams as 'output from id';

DELIMITER //
CREATE Procedure GetDep(in ids int, out dep VARCHAR(100))
begin
SELECT department INTO dep from employee_data WHERE emp_id = ids;
end //
DELIMITER ;

set @deps = '';
CALL GetDep(2,@deps);
SELECT @deps as "output of department"

-- inout prameter in stored procedures;
DELIMITER //
CREATE Procedure Applybonus (INOUT sal INT, in bonus int)
begin
set sal = sal + (sal * bonus / 100);
end //

DELIMITER ;

set @salary = 50000;
call `Applybonus`(@salary,10);

SELECT @salary as "updated sal"

CREATE INDEX emp_fetch ON employee_data(emp_id);

SELECT * from employee_data WHERE emp_id = 2

drop INDEX emp_fetch on employee_data

