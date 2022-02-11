create table person(personid int identity primary key,firstname varchar(255)not null,lastname varchar(255)
,email varchar(255) unique );

insert into person values('Rashi','Singh','rashis@gmail.com')
insert into person values('Sachi','rai','rashis@gmail.com')
insert into person values('rashi','Singh','sachir@gmail.com')
select*from person

create table person1(personid int identity primary key,firstname varchar(255)not null,lastname varchar(255)
,email varchar(255)constraint unique_email unique (email) );
insert into person1 values('Rashi','Singh','rashis@gmail.com')
insert into person1 values('Sachi','rai','rashis@gmail.com')
insert into person1 values('sashi','rai','sachir@gmail.com')
select*from person1
