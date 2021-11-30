select * from tblEmployee

select ASCII('A')
select CHAR(65)
 
-- while loop
Declare @start int
Set @start = 65

While (@start <= 90)
Begin
	Print CHAR(@start)
	Set @start = @start + 1
End

-- Print small alphabates
Declare @start2 int
Set @start2 = 97
while (@start2 <= 122)
Begin
	Print CHAR(@start2)
	Set @start2 = @start2 + 1
End

-- LTRIM() : Removes blanks spaces from left handside
Print ('  Hello')
Print LTRIM('  Hello')

-- RTRIM() : Removes blanks spaces from right handside
Print ('Hello  ')
Print RTRIM('Hello  ')

Declare @name nvarchar(20)
Set @name = '  SQL   '
Print @name
Print RTRIM(LTRIM(@name))

select UPPER(Name) as Upper_Name from tblEmployee
select LOWER(Name) as Lower_Name from tblEmployee
select REVERSE(Name) as [Reverse Name] from tblEmployee

select Name, LEN(Name) as [Total Character] from tblEmployee

--------------------------------------------------------------
select * from tblPerson

-- LEFT(ch_exp, int) : returns the specified number of characters from the left handside
select LEFT('abcdef', 3)
-- RIGHT(ch_exp, int)
select RIGHT('abcdef', 3)

-- CHARINDEX() : Return the starting position of the specified expression in a character string
Select CHARINDEX('@', 'sara@aaa.com')

-- SUBSTRING(string, start, lenght)
select SUBSTRING('sara@aaa.com', 6, 7)

Declare @email nvarchar(20)
Set @email = 'forid@bbbccc.com'
select SUBSTRING(@email, CHARINDEX('@', @email) + 1,
				LEN(@email) - CHARINDEX('@', @email))

select * from tblPerson

Select SUBSTRING(Email, CHARINDEX('@', Email) + 1, 
				LEN(Email) - CHARINDEX('@', Email)) as EmialDomain,
				COUNT(Email) as Total From tblPerson
				Group By SUBSTRING(Email, CHARINDEX('@', Email) + 1, 
				LEN(Email) - CHARINDEX('@', Email))

-- SPACE()
select (Name + SPACE(5) + City) as [Name - City] from tblPerson

-- REPLACE()
select Email, Replace(Email, 'com', '.net') as ConverEmail from tblPerson

-- STUFF()
select Name, Email, STUFF(Email, 2, 1, '*****') as StuffEmail from tblPerson
