create  function f2()
returns table 
as
return(select*from products)

select*from f2()

create table emp2(empid int,empcontact varchar(50),empname varchar(50),empcity varchar(50))
insert into emp2 values(1,123,'ravina','nagpur')
insert into emp2 values(2,222,'nisha','mumbai')
insert into emp2 values(3,333,'puja','pune')
select*from emp2


 create function emp6
    (  
       @empcontact varchar(50),  
       @empname varchar(50),  
       @empcity varchar(50)  
    )  
    returns varchar(150)  
    as  
    begin return(select @empcontact+ ' ' +@empname + ' ' + @empcity)  
    end  

select dbo.emp6(empcontact,empname,empcity) as 'detail' from emp2
