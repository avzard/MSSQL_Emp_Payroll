
---Welcome To Employee Pay Roll Data Base Problem---
--------------UC_1--------------
--Create DataBase--
create database payroll_service;
--Delete Existing--

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