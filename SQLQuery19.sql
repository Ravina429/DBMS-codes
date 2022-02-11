create procedure prod1
as
begin
select*from products
end;
exec prod1

alter procedure prod1
as
begin
select name,price from products
order by price
end;
exec prod1

create proc prod3(@minprice as decimal)
as 
begin
select*from products
where price>(@minprice)
order by price;
end;
exec prod3 150

create proc prod4(@pname as varchar(20))
as 
begin
select*from products
where name=(@pname)
order by name;
end;
exec prod4 'keyboard'

create proc prod7(@minp as decimal,@maxp as decimal)
as
begin
select*from  products
where price>@minp and price <@maxp
order by name;
end;
exec prod7 150,1000

create proc prod8(@minp as decimal,@maxp as decimal,@pn as varchar(max))
as
begin
select*from  products
where price>@minp and price <@maxp
and name LIKE '%' + @pn + '%'
order by name;
end;
exec prod8 110,800,'use'

create proc prod10(@minp as decimal=100,@maxp as decimal=1000,@pn as varchar(max))
as
begin
select * from products
where price > @minp and price < @maxp
and name LIKE '%' + @pn + '%'

order by name
end;
exec prod10 @pn='board'

create proc prod11(@minp as decimal=100,@maxp as decimal=null,@pn as varchar(max))
as
begin
select * from products
where
price >= @minp AND
        (@maxp IS NULL OR price <= @maxp) AND
        name LIKE '%' + @pn + '%'
end;
exec prod11 @pn='board'


