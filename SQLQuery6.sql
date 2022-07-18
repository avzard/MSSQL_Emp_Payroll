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
