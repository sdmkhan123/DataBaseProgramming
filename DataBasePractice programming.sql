create database PracticeDB
use PracticeDB

--=========================================================
--Creates Person Table
--=========================================================
create table Person(
pId int identity(1,1) primary key,
pName varchar(255) not null,
personAge int not null,
pAddress varchar(255) not null
)
--Inserting data into Persoon Table
insert into Person (pName, personAge, pAddress) values
('Saddam', 27, 'Uttar Pradesh'),
('Taran', 26, 'Haryana'),
('Upendra', 25, 'Rajasthan'),
('Rani', 24, 'Jharkhand')
--Retrive data from Person Table
select * from Person

select pAddress
from Person
where pAddress IS NOT NULL

--In Operator
select *
from Person
where pAddress In ('Haryana', 'Jharkhand')

--===========================================================
--Ceates Employee Table
--===========================================================
create table Employee(
empId int identity (1,1) primary key,
empName varchar(255) Not Null,
empSalary int Not Null,
startDate Date Not Null
)
--Inserting data into Employee Table
insert into Employee values
('Saddam', 27000, '2021/08/01'),
('Taran', 26000, '2020/07/18'),
('Upendra', 25000, '2019/07/18'),
('Rani', 24000, '2018/06/18')
--Retrive data from Employee Table
select * from Employee
select startDate
from Employee
where startDate IS NULL

-- inner Join
select *
from Person
INNER JOIN Employee On Employee.empId=Person.pId
--===========================================================
--Ceates Employee Table
--===========================================================
create table EmpCompany(
CompId int identity (1,1) primary key,
CompName varchar(255) Not Null,
CompRevenue int Not Null
)
--Inserting data into EmpCompany Table
insert into EmpCompany values
('BridgeLabz', 1000),
('EasyRewardsz', 1001),
('KPMG', 1002),
('Magic Soft', 1003)
--Retrive data from EmpCompany Table
select * from EmpCompany

select CompName
from EmpCompany
where CompName IS NOT NULL
--Update data Table value
Update EmpCompany
Set CompName = 'Dell EMC'
Where CompId = 4
select * from EmpCompany
Update EmpCompany
Set CompName = 'Magic Soft'
Where CompId = 4
select * from EmpCompany
--Find min-max CompRevenue in Table
select MAX(CompRevenue)
from EmpCompany

select MIN(CompRevenue)
from EmpCompany

--Count the number of record in Tabe
select COUNT(CompRevenue)
from EmpCompany
--===========================================================