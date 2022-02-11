create table salesman(salesmanid int,name varchar(20),city varchar(20),commission dec(10,2));
insert into salesman values(5001,'Jamesh Hong','New York',0.15)
select*from salesman
insert into salesman values(5002,'Nail knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex','London',0.11)
insert into salesman values(5006,'Mc Lyon','Paris',0.14)
insert into salesman values(5007,'Paul Adam','Rome',0.13)
insert into salesman values(5003,'lauson Hen','Son Jose',0.12)
select*from salesman

select name,commission from salesman

create table orders(ord_no int,purch_amt dec(10,2),ord_date date,customer_id int,salesman_id int)
insert into orders values(70001,150.5,'2012-10-05',3005,5002) 
select*from orders
insert into orders values(70009,270.65,'2012-10-05',3001,5005) 
insert into orders values(70002,65.26,'2012-09-10',3002,5001) 
insert into orders values(70004,110.5,'2012-08-17',3009,5003) 
insert into orders values(70007,948.5 ,'2012-09-10',3005,5002) 
insert into orders values(70005,2400.6,'2012-07-27',3007,5001) 
insert into orders values(70008,5760 ,'2012-09-10',3002,5001) 
select*from orders
select ord_no, ord_date, purch_amt from orders where salesman_id=5001
select distinct salesman_id from orders;

create table salesman(salesmanid int,name varchar(20),city varchar(20),commission dec(10,2));
insert into salesman values(5001,'Jamesh Hong','New York',0.15)
select*from salesman
insert into salesman values(5002,'Nail knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex','London',0.11)
insert into salesman values(5006,'Mc Lyon','Paris',0.14)
insert into salesman values(5007,'Paul Adam','Rome',0.13)
insert into salesman values(5003,'lauson Hen','Son Jose',0.12)
select*from salesman
select name,city from salesman where city='Paris'

create table customers(customer_id int,cust_name varchar(20),city varchar(20),grade int,salesman_id int);
insert into customers values(3002,'Nick Rimando','New York',100,5001)
select*from customers
insert into customers values(3007,'Brad Davis','New York',100,5001)
insert into customers values(3005,'Graham Zusi','California',200,5001)
insert into customers values(3008,'Julian Green','London',200,5002)
insert into customers values(3004,'Fabian Johnson','Paris',300,5002)
insert into customers values(3009,'Geoff Cameron','Berlin',100,5006)
insert into customers values(3003,'Jozy Altidor','Moscow',200,5003)
select*from customers
drop table customers

create table customers(customer_id int,cust_name varchar(20),city varchar(20),grade int,salesman_id int);
insert into customers values(3002,'Nick Rimando','New York',100,5001)
select*from customers
insert into customers values(3007,'Brad Davis','New York',100,5001)
insert into customers values(3005,'Graham Zusi','California',200,5001)
insert into customers values(3008,'Julian Green','London',200,5002)
insert into customers values(3004,'Fabian Johnson','Paris',300,5002)
insert into customers values(3009,'Geoff Cameron','Berlin',100,5006)
insert into customers values(3003,'Jozy Altidor','Moscow',200,5003)
select*from customers
drop table customers

create table customers(customer_id int,cust_name varchar(20),city varchar(20),grade int,salesman_id int);
insert into customers values(3002,'Nick Rimando','New York',100,5001)
insert into customers values(3007,'Brad Davis','New York',100,5001)
insert into customers values(3005,'Graham Zusi','California',200,5001)
insert into customers values(3008,'Julian Green','London',200,5002)
insert into customers values(3004,'Fabian Johnson','Paris',300,5002)
insert into customers values(3009,'Geoff Cameron','Berlin',100,5006)
insert into customers values(3003,'Jozy Altidor','Moscow',200,5003)
select*from customers
select cust_name,grade from customers where grade=200

create table Nobal(year int,subject varchar(20),winner varchar(50),country varchar(20),category varchar(20));
insert into Nobal values(1970,'physic','Dennis Gabor','sweden','scientist') 
insert into Nobal values(1972,'physic','Louis Neel','France','scientist') 
insert into Nobal values(1930,'Chemistry','Luis Federico Leloir','France','scientist') 
insert into Nobal values(1971,'Physiology','Ulf von Euler','sweden','scientist') 
insert into Nobal values(1940,'Physiology','Johannes Georg Bednorz','Germany ','scientist') 
insert into Nobal values(1923,'Literature','Aleksandr Solzhenit','Russia ','Linguist') 
insert into Nobal values(1974,'Economics','Paul Samuelson','USA  ','scientist') 
select*from Nobal
select*from Nobal where subject not like 'p%' order by year desc
select  year, subject, winner, country,category from Nobal where winner='Johannes Georg Bednorz'


select year, subject, winner, country,category from Nobal where year=1970 and subject!='Physiology'
and subject!='Economics'
select year, subject, winner, country,category from Nobal where winner like 'Louis%'
select year,subject,winner from Nobal where year=1970
select winner from Nobal where subject='Literature'
select year,subject from Nobal where winner='Dennis Gabor'
select winner from Nobal where year>1950 and subject='physic'
select year,subject,winner,country from Nobal where year>1965 and year<1975

drop table Nobal