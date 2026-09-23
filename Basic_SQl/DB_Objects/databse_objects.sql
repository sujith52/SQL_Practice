
CREATE View allview as 
SELECT account_number from bankaccounts

SELECT * from allview

SHOW TABLES

desc bankaccounts

CREATE VIEW all_members as
SELECT user_name, balance from bankaccounts
order by balance

SELECT * from all_members

CREATE View userid_balance as 
SELECT b.account_number, b.user_name from bankaccounts b 
JOIN bankaccounts b1 
WHERE b.account_number = b1.account_number

SELECT * from userid_balance

drop View userid_balance

-- synonyms in mysql
-- only used in the oracle

CREATE Table BankActiveUserAccountDetails(
    bank_id int PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(80) not NULL
)

insert INTO bankactiveuseraccountdetails(user_name) VALUES
("sujith"),("sreeja"),("lathas")

SELECT * from bankactiveuseraccountdetails

CREATE synonym bank for bankactiveuseraccountdetails

CREATE synonym public pb_bank for bankactiveuseraccountdetails

drop public synonym pb_public

SELECT * from user_synonyms

SELECT * from all_synonyms

-- sequence in oracle 

CREATE Table stationary(
    item_id int PRIMARY KEY,
    item_name VARCHAR(50) not NULL
)

create sequence item_id
start with 1
increment by 1
MAXVALUE 1000
nocycle

insert INTO stationary VALUES(item_id.nextval,"Apsara pencil")

insert INTO stationary VALUES(item_id.curval + 1,"book cover brown sheet")

SELECT item_id.curval from dual

SELECT item_id.nextval from dual

drop sequence item_id

SELECT * from user_sequences

