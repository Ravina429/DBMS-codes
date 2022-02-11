create table product(productid int identity primary key,productname varchar(20) 
not NULL,unitprice dec(10,2) check (unitprice>0));
insert into product values('monitor',2200)
select*from  product

insert into product values('monitor',4000)
select*from  product

create table product1(productid int identity primary key,productname varchar(20) 
not NULL,unitprice dec(10,2) constraint positiveprice check (unitprice>0));

insert into product1 values('mouse',3000)
select*from  product1

insert into product1(productname, unitprice)
values ('Awesome Free Bike', 700);
select*from product1

insert into product1(productname, unitprice)
values ('Awesome Free Bike', Null);
select*from product

insert into product1(productname, unitprice)
values ('Bike', Null);
select*from product1

create table product2(productid int identity primary key,productname varchar(20) 
not NULL,unitprice dec(10,2)   check (unitprice>0),discountprice dec(10,2) check(discountprice>0),
check(discountprice<unitprice));

insert into product2 values('mouse',121,30)
select*from product2

create table product3(productid int identity primary key,productname varchar(20) 
not NULL,unitprice dec(10,2),discountprice dec(10,2),   check (unitprice>0),
check(discountprice > 0 AND discountprice > unitprice)
);
insert into product3 values('mouse',121,430)
select*from product3

create table product4(productid int identity primary key,productname varchar(20) 
not NULL,unitprice dec(10,2),discountprice dec(10,2),   check (unitprice>0),
constraint validprice check(discountprice > 0 AND discountprice > unitprice)
);
insert into product4 values('mouse',121,530)
select*from product4
