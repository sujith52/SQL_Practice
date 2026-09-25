create table orders(
  order_is int primary key,
  product_id int,
  quantity int
);

create table product(
  product_id int,
  quantity int
);

insert into orders values(1,1,90);
insert into orders values(2,2,100);
insert into orders values(3,3,89);

-- select * from orders;

insert into product values(1,100);
insert into product values(2,150);
insert into product values(3,120);

create trigger UpdateProduct
after insert on orders
for each row
begin 
update product
set quantity = quantity+:New.quantity
where product_id =:new.product_id;
end;
/

insert into orders values(4,2,89);
insert into orders values(1,1,100)

create trigger DeleteProductQuantity
after delete on orders
for each row
begin
update product
set quantity = quantity+:old.quantity
where product_id =:old.product_id;
end;
/
delete from orders
where order_is = 3;

select * from orders;

select * from product;