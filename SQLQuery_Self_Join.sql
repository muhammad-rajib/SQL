Create table tblEmployee2
(
EmployeeId int Primary Key,
Name nvarchar(20),
ManagerId int
)

-- insert data into tblEmployee2
insert into tblEmployee2 values (1, 'Mike', 3)
insert into tblEmployee2 values (2, 'Rok', 1)
insert into tblEmployee2 values (3, 'Todd', NULL)
insert into tblEmployee2 values (4, 'Ben', 1)
insert into tblEmployee2 values (5, 'Sam', 1)

-- view data
select * from tblEmployee2

-- Left Outer Self Join
Select		E.Name As Employee, M.Name As Manager
From		tblEmployee2 E
Left Join	tblEmployee2 M
ON			E.ManagerId = M.EmployeeId

-- Inner Self Join
Select		E.Name As Employee, M.Name As Manager
From		tblEmployee2 E
Inner Join	tblEmployee2 M
ON			E.ManagerId = M.EmployeeId