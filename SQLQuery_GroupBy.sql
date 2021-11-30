-- Create table
create table tblEmployee
(
ID int Primary Key,
Name nvarchar(20),
Gender nvarchar(10),
Salary int,
City nvarchar(20)
)

-- select all data
select * from tblEmployee

-- insert data
insert into tblEmployee values(6, 'Pam', 'Male', 7000, 'New York')
insert into tblEmployee values(4, 'Sam', 'Male', 4500, 'London')
insert into tblEmployee values(8, 'Valarie', 'Female', 5500, 'New York')

-- Group By
select City, sum(salary) as TotalSalary 
from tblEmployee group by City

-- Grouping by multiple columns
select City, Gender, sum(Salary) as TotalSalary
from tblEmployee group by City, Gender
order by City

-- Grouping using multiple aggregate functions
select City, Gender, sum(Salary) as TotalSalary, count(ID) as [Total Employee]
from tblEmployee group by City, Gender 
order by City

-- Filtering Groups
select City, Gender, sum(Salary) as TotalSalary, count(ID) as [Total Employee]
from tblEmployee group by City, Gender
Having Gender = 'Male'
order by City
