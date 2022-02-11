create table products(id int,name varchar(20),price int,quantity int)
insert into products values (1,'mouse',150,5)
insert into products values (2,'keyboard',500,3)
insert into products values (3,'mouse',150,2)
insert into products values (5,'speaker',1000,1)
insert into products values (6,'keyboard',550,2)
insert into products values (7,'cpu',1500,1)
insert into products values (8,'monitor',1000,2)
insert into products values (9,'ups',1500,2)
select*from products
SELECT name, max(quantity) AS "Maximum Quantity" FROM Products
group by name
SELECT name, min(quantity) AS "Minimum Quantity" FROM Products
group by name
SELECT name, avg(price) AS "Average price" FROM Products
group by name
SELECT name, sum(price) AS "Sum price" FROM Products
group by name
SELECT name, count(price) AS "count price" FROM Products
group by name



