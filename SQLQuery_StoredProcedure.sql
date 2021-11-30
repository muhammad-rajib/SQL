select * from tblEmployee

-- Stored Procedure
Create Proc spGetNameById
@Id int
as
Begin
	select Name from tblEmployee where Id = @Id
End

Execute spGetNameById 1
Execute spGetNameById 2

select * from tblEmployee
select COUNT(ID) from tblEmployee

-- Stored Procedure with output parameter
Create Proc spGetTotalCount
@count int output
as
Begin
	select @count = COUNT(ID) from tblEmployee
End

Declare @count2 int
Execute spGetTotalCount @count2 out
Print @count2

-- Stored Procedure with return value
Create Proc spGetTotalCount2
as 
Begin
	return (select COUNT(Id) from tblEmployee)
End

Declare @id int
Execute @id = spGetTotalCount2
Print @id
