create table customer2 ( custid int, custname varchar(50),
state varchar(50), city varchar(50))
insert into customer2 values (1, 'krunal','mah','nagpur')
insert into customer2 values (2, 'vivek','mah','nagpur')
insert into customer2 values (3, 'adi','mp','bhopal')
insert into customer2 values (4, 'virat','mp','bhopal')
insert into customer2 values (5, 'rekha','mp','indore')
select*from customer2

create table order2 (orderid int , custid int, orderdate date,
productname varchar(20),qty int)
insert into order2 values(1,1,'2022-2-2','mouse',5)
insert into order2 values(1,1,'2022-2-2','keyboard',5)
insert into order2 values(2,2,'2022-2-2','desktop',5)
insert into order2 values(2,2,'2022-2-2','ram',5)
insert into order2 values(3,3,'2022-2-2','laptop',5)
insert into order2 values(4,3,'2022-1-2','mouse',5)
insert into order2 values(5,4,'2022-2-2','mouse',5)
insert into order2 values(6,4,'2022-2-2','ram',5)
insert into order2 values(7,5,'2022-2-2','desktop',5)
insert into order2 values(7,5,'2022-2-2','ram',5)
select * from order2

select*from customer2
select custid from customer2 where city='nagpur'

select orderid,custid,orderdate,productname,qty 
from order2
where custid in 
(select custid from customer2 where city='nagpur')

select orderid,custid,orderdate,productname,qty 
from order2
where custid in 
(select custid from customer2 where city='bhopal')

