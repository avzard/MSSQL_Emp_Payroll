---Welcome To Employee Pay Roll Data Base Problem---
--------------UC_1--------------
--Create DataBase--
create database payroll_service;

--Switch To Working Data Base-- 
use payroll_service;

--------------UC_2--------------
--Creating Table Statement--
Create Table Employee_payroll(
	id int identity(1,1) PRIMARY KEY,
	[Name] varchar(200),
	Salary float,
	startDate datetime
);
		
---------------UC_3--------------
--Insert Into Operation--
Insert Into Employee_payroll
Values ('Abhishek',766758, '2021-12-02'),('Amol',683865, '2020-03-05');
Insert Into Employee_payroll (Name,startDate)
Values ('Abhishek','2021-12-02'),('Amol', '2020-03-05');

--------------UC_4--------------
--Retrieve Data--
select * from Employee_payroll;
select Id, Name from Employee_payroll;

--------------UC_5--------------
-- Retreive Salary--
select * from Employee_payroll where Name = 'Abhishek' or Name = 'Amol';

select * from Employee_payroll where Name = 'Abhishek' or Id = '4';

--Retrive Record Based on Date range--
select * from Employee_payroll where startDate between cast('2020-01-01' as date) and getdate();
--------------UC_6--------------
--Creating Gender Column Into Existing Table--
Alter Table Employee_payroll Add Gender Char(1);  --M \ F
--Update Query--
update Employee_payroll Set Gender = 'M';
update Employee_payroll Set Gender = 'M' where Name = 'Amol'
update Employee_payroll Set Salary = 850000 where ID = 3;
update Employee_payroll Set Salary = 50000 where ID = 4;
update Employee_payroll Set Name = 'Harshali' where ID = 3;
update Employee_payroll Set Name = 'Nadeem' where ID = 4;
update Employee_payroll Set Gender = 'F' where ID = 3;
update Employee_payroll Set Salary = '56755',startDate = getdate() where Name = 'Nadeem';

--Female Records--
Insert Into Employee_payroll
Values ('Sharada',87656, '2002-04-02','F'),('Raksha',126778, '2007-06-25','F');

