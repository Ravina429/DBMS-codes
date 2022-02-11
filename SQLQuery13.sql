create table student(id int primary key identity,admission_no varchar(45) NOT NULL,  
      first_name varchar(45) NOT NULL,      
      last_name varchar(45) NOT NULL,  
      age int,  
      city varchar(25) NOT NULL      
    ); 
create table fee(admission_no varchar(45) NOT NULL,  
      course varchar(45) NOT NULL,      
      amount_paid int,    
    ); 
	INSERT INTO Student (admission_no, first_name, last_name, age, city)       
    VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
    (2135, 'Paul', 'Ward', 15, 'Alaska'),       
    (4321, 'Peter', 'Bennett', 14, 'California'),    
    (4213,'Carlos', 'Patterson', 17, 'New York'),       
    (5112, 'Rose', 'Huges', 16, 'Florida'),  
    (6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
    (7555,'Antonio', 'Butler', 14, 'New York'),       
    (8345, 'Diego', 'Cox', 13, 'California');  
      select*from student
      
    INSERT INTO Fee (admission_no, course, amount_paid)       
    VALUES (3354,'Java', 20000),       
    (7555, 'Android', 22000),       
    (4321, 'Python', 18000),    
    (8345,'SQL', 15000),       
    (5112, 'Machine Learning', 30000);  
	select*from fee

	 SELECT S1.first_name, S2.last_name, S2.city  
    FROM Student S1, Student S2  
    WHERE S1.id <> S2.iD AND S1.city = S2.city  
    ORDER BY S2.city;  





	select student.admission_no,student.first_name,student.last_name,fee.course,fee.amount_paid
	from student
	inner join fee
	on student.admission_no=fee.admission_no

	SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
    FROM Student  
    left outer join Fee  
    ON Student.admission_no = Fee.admission_no;

	SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
    FROM Student  
    right OUTER JOIN Fee  
    ON Student.admission_no = Fee.admission_no;

	SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
    FROM Student  
    full OUTER JOIN Fee  
    ON Student.admission_no = Fee.admission_no;
	select *from student
	select *from fee

	SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
    FROM Student  
    cross  JOIN Fee  
    