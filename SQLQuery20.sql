 CREATE TABLE Product10 (  
     Product_id INT PRIMARY KEY,   
     Product_name VARCHAR(40),   
     Price INT,  
     Quantity INT  
    )  
	 INSERT INTO Product10 VALUES(111, 'Mobile', 10000, 10),  
    (112, 'Laptop', 20000, 15),  
    (113, 'Mouse', 300, 20),  
    (114, 'Hard Disk', 4000, 25),  
    (115, 'Speaker', 3000, 20);  
	select*from product10 
	 BEGIN TRANSACTION  
    -- SQL Statements  
     INSERT INTO Product10 VALUES(118, 'Headphone', 2000, 30)  
     UPDATE Product10 SET Price = 500 WHERE Product_id = 119  
     -- Commit changes   
    COMMIT TRANSACTION 

	  BEGIN TRANSACTION  
    -- SQL Statements  
    UPDATE Product10 SET Price = 5000 WHERE Product_id = 114  
    DELETE FROM Product10 WHERE Product_id = 116  
    --Undo Changes  
    ROLLBACK TRANSACTION  



