-- 1. Creating scalar defined function
Create Function CalculateAge(@DOB date)
Returns int
As
Begin
	Declare @age int
	set @age = datediff(year, @DOB, GETDATE()) - 
				Case
					When (month(@DOB) > month(getdate())) OR
							(month(@DOB) = month(getdate())) AND day(@DOB) > day(getdate())
					Then 1
					Else 0
				End
	Return @age
End

-- 2. Calling scalar defined function
select sample.dbo.CalculateAge('10/04/1997') as Age

select Name, DateOfBirth, dbo.CalculateAge(DateOfBirth) as Age 
from tblDateOfBirth
where dbo.CalculateAge(DateOfBirth) > 30

-- 3. Altering and Dropping user defined function
sp_helptext CalculateAge -- function code

--drop CalculateAge
