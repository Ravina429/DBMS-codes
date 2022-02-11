CREATE TABLE student1(  
        id nchar(10),  
        name nchar(10),  
        age nchar(10),  
        salary nchar(10)  
    );
 INSERT INTO STUDENT1  
               ([ID]    
               ,[NAME]    
               ,[AGE]    
               ,[SALARY])    
         VALUES    
               (1, 'John', 27, 20000),     
               (2, 'Harris', 29, 28000),    
               (3, 'peter', 17, 25000),  
               (4, 'Marco', 29, 28000),    
               (5, 'Diego', 17, 35000),  
               (6, 'Antonio', 22, 48000),    
               (7, 'Steffen', 16, 35000);  
			   
			   SELECT * FROM STUDENT1;  

			    SELECT * FROM STUDENT1 WHERE age>20;

				CREATE INDEX index_age ON STUDENT1 (age);  
				SELECT * FROM STUDENT1 WHERE age>20;

				CREATE VIEW [Student_view] AS  
    SELECT id, name, age  
    FROM Student1  
    WHERE id > 3;  
select*from student_view
select*from customers

create view [customer_view]as
select customer_id,cust_name,city
from customers
where salesman_id>5002
select*from customer_view
select*from products

DECLARE 
    @product_name2 VARCHAR(MAX), 
    @list_price2   DECIMAL;

DECLARE cursor_product2 CURSOR
FOR SELECT 
        name, 
        price
    FROM 
        products;

OPEN cursor_product2;

FETCH NEXT FROM cursor_product2 INTO 
    @product_name2, 
    @list_price2;
PRINT @product_name2 + CAST(@list_price2 AS varchar);
WHILE @@FETCH_STATUS = 0
    BEGIN
       
        FETCH NEXT FROM cursor_product2 INTO 
            @product_name2, 
            @list_price2;
            
          PRINT @product_name2 + CAST(@list_price2 AS varchar);
    END;

CLOSE cursor_product2;

DEALLOCATE cursor_product2;


