-- Active: 1780563775622@@127.0.0.1@3306@sqlpractice

CREATE USER sujith123 identified by 'sujith123'

grant all PRIVILEGES ON *.* to sujith123

-- Active: 1790050944335@@127.0.0.1@3306
-- this is the user sujith123 connection which granted the all access
CREATE DATABASE hellobro

drop DATABASE hellobro

REVOKE all PRIVILEGES on *.* from sujith123

show DATABASES

GRANT SELECT
ON ecom.customers
TO 'sujith123';

use ecom

show tables

grant SELECT, INSERT, UPDATE on ecom.customers 
to 'sujith123'

GRANT SELECT on ecom.customers to 'sujith123'
with GRANT OPTION

revoke UPDATE on ecom.customers
from 'sujith123'

REVOKE SELECT,INSERT on ecom.customers
from 'sujith123'

REVOKE ALL PRIVILEGES on *.* from 'sujith123'

show GRANTS for 'sujith123'

drop USER 'sujith123'

CREATE USER sujith123 IDENTIFIED by 'sujith123'

CREATE role 'developer'

grant SELECT, UPDATE, INSERT on ecom.customers 
to 'developer'

grant 'developer' to 'sujith123'

show GRANTS for 'sujith123'

SET DEFAULT ROLE 'developer'
to 'sujith123'

