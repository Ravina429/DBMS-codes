create table customer1(custid int ,custname varchar(20),telno varchar(20))
create table order1(orderid int ,orderdate date,custid int,
prodname varchar(20),quantity int,rate int)
insert into customer1 values(1001,'Juhi Chawla','766746586')
insert into customer1 values(1002,'Shilpa Shetty','427682466')
insert into customer1 values(1003,'Rani Mukharji','286477692')
insert into customer1 values(1004,'Kareena kapoor','728549777')
insert into customer1 values(1005,'Aishwarya Rai','832867556')
insert into customer1 values(1006,'Kriti Sanon','674656888')
select*from customer1


insert into order1 values(111,'07-02-2018',1002,'Hand Bag',50,600)
insert into order1 values(122,'08-02-2018',1001,'Lipstick',40,300)
insert into order1 values(133,'09-02-2018',1002,'Foundation',80,400)
insert into order1 values(144,'10-02-2018',1004,'Eyeliner',70,360)
insert into order1 values(155,'12-02-2018',1002,'Hairdry',30,800)
select*from order1
SELECT customer1.custid,customer1.custname,customer1.telno,order1.orderid,order1.orderdate,order1.prodname
,order1.quantity,order1.rate from customer1 
    full outer JOIN order1  
    ON customer1.custid = order1.custid;


SELECT customer1.custid,customer1.custname,customer1.telno,order1.orderid,order1.orderdate,order1.prodname
,order1.quantity,order1.rate from customer1 
    right outer JOIN order1  
    ON customer1.custid = order1.custid;


SELECT customer1.custid,customer1.custname,customer1.telno,order1.orderid,order1.orderdate,order1.prodname
,order1.quantity,order1.rate from customer1 
    LEFT OUTER JOIN order1  
    ON customer1.custid = order1.custid;

select customer1.custid,customer1.custname,customer1.telno,
order1.orderid,order1.orderdate,order1.prodname,order1.quantity,order1.rate
from customer1
inner join order1
on customer1.custid=order1.custid

