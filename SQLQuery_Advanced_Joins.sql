select * from tblEmployee
select * from tblDepartment

-- Left Join: Non Matching rows from the left table
select Name, Gender, Salary, DepartmentName
from tblEmployee
Left Join tblDepartment
On tblEmployee.DepartmentId = tblDepartment.Id
Where tblDepartment.Id IS NULL

-- Right Join: Non Matching rows from the right table
select Name, Gender, Salary, DepartmentName
from tblEmployee
Right Join tblDepartment
On tblEmployee.DepartmentId = tblDepartment.Id
Where tblEmployee.DepartmentId IS NULL

-- Full Join: Non Matching rows from both table
Select		Name, Gender, Salary, DepartmentName
From		tblEmployee
FULL JOIN	tblDepartment
On			tblEmployee.DepartmentId = tblDepartment.Id
Where		tblEmployee.DepartmentId IS NULL
OR			tblDepartment.Id IS NULL