-- create table for deparment
create table tblDepartment
(
Id int Primary Key,
DepartmentName nvarchar(15),
Location nvarchar(20),
DepartmentHead nvarchar(20)
)

-- insert data into department table
insert into tblDepartment values (1, 'IT', 'London', 'Rick')
insert into tblDepartment values (2, 'Payroll', 'Delhi', 'Ron')
insert into tblDepartment values (3, 'HR', 'New York', 'Christie')
insert into tblDepartment values (4, 'Finance', 'Sydney', 'Cindrella')

-- view table data
select * from tblEmployee
select * from tblDepartment

-- add new column in Employee table
alter table tblEmployee
add DepartmentId int

-- Update table value
Update tblEmployee Set DepartmentId = 1 Where ID = 8

-- INNER JOIN
select Name, Gender, Salary, DepartmentName
from tblEmployee
INNER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

-- LEFT OUTER JOIN
select Name, Gender, Salary, DepartmentName
from tblEmployee
LEFT OUTER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id 

-- RIGHT OUTER JOIN
select Name, Gender, Salary, DepartmentName
from tblEmployee
RIGHT OUTER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

-- FULL OUTER JOIN
select Name, Gender, Salary, DepartmentName
from tblEmployee
FULL OUTER JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.Id

-- CROSS JOIN
select Name, Gender, Salary, DepartmentName
from tblEmployee
CROSS JOIN tblDepartment 