-- date format: mm/dd/yyyy
Select Id, Name, DateOfBirth, dbo.fnComputeAge(DateOfBirth) as Age from tblDateOfBirth

-- Function for Compute Age
Create function fnComputeAge(@DOB datetime)
returns nvarchar(50) 
as 
Begin

Declare 
@years int,
@months int,
@days int,
@tmpdate datetime

Select @tmpdate = @DOB

select @years = Datediff(year, @tmpdate, GetDate()) - 
				Case
					When (Month(@DOB) > Month(GetDate())) OR
					(Month(@DOB) = Month(GetDate()) AND Day(@DOB) > Day(GetDate()))
					THEN 1 ELSE 0
				End
select @tmpdate = DATEADD(year, @years, @tmpdate)

select @months = datediff(month, @tmpdate, getdate()) -
				case
					when day(@DOB) > day(getdate())
					then 1 else 0
				end
select @tmpdate = dateadd(month, @months, @tmpdate)

select @days = datediff(Day, @tmpdate, getdate())

Declare @Age nvarchar(50)
Set @Age =  cast(@years as nvarchar(4)) + ' Years ' + 
			cast(@months as nvarchar(2)) + ' Months ' + 
			cast(@days as nvarchar(2)) + ' Days Old'
return @Age

End
