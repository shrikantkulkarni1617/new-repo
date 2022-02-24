Create database Practice 
use Practice

create table Amazon ( Sr_No int ,
Cust_id Varchar (25) primary key ,  
Cust_Name Varchar(30) , 
Cust_contact Varchar(15), 
Cust_mail Varchar(35), 
Cust_Address Varchar(70),
Cust_city Char(20))

select * from Amazon

insert into Amazon values ('1','Shri@123','Shrikant','+9198500','shri@gmail.com','Dhayri','Pune')
insert into Amazon values ('2','Soni@123','Soni','+9194222','soni@gmail.com','Narhe','Pune')
insert into Amazon values ('3','Sonu@123','Shraddha','+911800','corona@gmail.com','katraj','Pune')
insert into Amazon values ('4','Ajinkya@123', 'Ajinkya', '9960015385', 'ajinkyadawale@gmail.com', 'Warje','Pune')
insert into Amazon values ('5','Animish@123', 'Animish', '9960013245', 'animishmirge@gmail.com', 'Rautwadi', 'Akola')
insert into amazon values ('6','Hemant@234', 'Hemant', '8907652345', 'hemantlodam@gmail.com','Khedkar nagar', 'Amaravati')
insert into Amazon values ('7','jay@456', 'Jay', '7649328566', 'Jaynahate@gmai.com', 'Shivanjinagar', 'Nagpur')
insert into Amazon values('8','mrunal@21','Mrunal Deoghare','9890731022','mrunaldeoghare@gmail.com','Dhayari pune','Pune')
insert into Amazon values('9','mahesh@21','Mahesh gurav','9890732565','mahesh@gmail.com','nasikchauk, nasik','nasik')
insert into Amazon values('10','kushal@215','kushal pachghare','985631022','Pachghare@gmail.com','kishor nagar','akola')
insert into Amazon values('11','kushal@21',' ','985631022','Pachghare@gmail.com','kishor nagar','akola')

update  Amazon set Cust_Name ='raahi' where Cust_id = 'kushal@21'

truncate table Amazon

select * from Amazon where Cust_id = 'Hemant@234'
select Cust_name from Amazon where Cust_city = 'Pune'
select * from Amazon where Cust_id between 'jay@456' and 'kushal@215' --------- parameters for between should be in asecending order or alphabatically
select * from Amazon where Sr_No between 1 and 5
select * from Amazon where Cust_city in ('Pune','Akola')
select * from Amazon where Cust_city not in ('Pune','Akola')
select * from Amazon where Cust_city like '%a'
select * from Amazon where Cust_city like 'a%'
select * from Amazon where Cust_city like '%a%'
select * from Amazon where Cust_city like 'a%r%'
select * from Amazon where Cust_city like 'a%[m]%'

create table persons (
ID int ,
last_name varchar (40) not null unique,
first_name varchar (450) not null,
age int )

select * from persons

insert into persons values ('1', 'Null','shrikant','18')
insert into persons values ('1', 'Null','','18')

drop table persons

create table defaulties (d_id int primary key,
dname varchar(50), dpost int default '411041')

insert into defaulties values (1,'Meena','411041')
insert into defaulties values (2,'Mina',default)
insert into defaulties values (3,'Hina',default)
insert into defaulties (d_id,dname) values (4,'Rina')
insert into defaulties values (5,'Hina',default)

select * from defaulties
drop table defaulties


select * from defaulties

update defaulties set dname= 'Heena' where d_id in (3,5)

delete defaulties where d_id ='5'

create table employee1(
E_ID int,
E_Name Varchar (30),
E_Org Varchar (30),
E_Sal int)

select * from employee1

insert into employee1 values (1,'Shrikant','IBM',70000)
insert into employee1 values (2,'Richa','TCS',60000)
insert into employee1 values (3,'Reena','Capgi',65000)
insert into employee1 values (4,'Rina','Atlance',60000)
insert into employee1 values (5,'Shrijeet','Intel',90000)
insert into employee1 values (6,'Soham','Micro',85000)
insert into employee1 values (7,'Sameer','syntel',55000)
insert into employee1 values (8,'Samir','Infosys',40000)
insert into employee1 values (9,'Rachana','Wipro',45000)
insert into employee1 values (10,'Rihana','Barclays',75000)
insert into employee1 values (11,'Rihana',Null, 75000)

select * from employee1
select min(E_name) as minimiumsalary from employee1

select * from employee1
select max(E_Name) as maximumsalary from employee1

select count(E_Org) from employee1

update employee1 set E_Org= '' where E_ID = 11
select * from employee1

alter table employee1 alter column E_Org varchar (30) 

select count ('employee1')

select top 7 * from employee1 where E_ID >4

update employee1 set E_Name= 'Anay' where E_ID = 1

select * from employee1
select min(E_Sal) as minimiumsalary from employee1


select * from employee1
select sum(E_Sal) from employee1 where E_ID in (1,2)

select * from employee1
select sum(E_Sal) from employee1 where E_Sal > 40000

select * from employee1
select avg(E_Sal) from employee1 

select * from employee1
select * from employee1 order by E_Org Asc

update  employee1 set E_Org= 'NULL' where E_ID =11
update  employee1 set E_Sal= '0' where E_ID =11

select * from employee1
select * from employee1 order by E_Org 

drop table employee

Create table employee (
 E_id int,
 E_Name varchar(20),
 E_Org varchar(20),
 E_sal int)

 insert into employee values(1,'Rina','IBM',70000)
 insert into employee values(2,'simran','CTC',60000)
 insert into employee values(3,'Rihana','Capgi',65000)
 insert into employee values(4,'sohan','Google',90000)
 insert into employee values(5,'mohan','Infy',55000)
 insert into employee values(6,'naveen','Mastercard',85000)
 insert into employee values(7,'','Mastercard',85000)
 insert into employee values(8,'','BOA','')
 insert into employee values(9,NULL,'jhonson',NULL)
 insert into employee values(NULL,NULL,NULL,NULL)
 insert into employee values(11,'10','@123',NULL)
 insert into employee values(12,'Mohan','123@',25000)

 select * from employee

 select * from employee order by E_sal desc

  select * from employee order by E_Name 

  select top 5 * from employee order by E_sal desc

  select max(E_sal) from employee where E_sal between 
select * from (employee order by E_sal desc limit 5)

select min(E_sal) from employee where E_sal between 50000 and 60000

select E_Name, max(E_sal) as maximumsalary from employee

select * from employee where salary

select min(E_sal)from employee where E_sal in (select top 5 * from employee order by E_sal desc)