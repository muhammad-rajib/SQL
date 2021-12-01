-- DateTime Table
create table tblDateTime
(
	c_time time,
	c_date date,
	c_smalldatetime smalldatetime,
	c_datetime datetime,
	c_datetime2 datetime2,
	c_datetimeoffset datetimeoffset
)

select * from tblDateTime

-- insert values to DataTime Table
INSERT INTO tblDateTime VALUES (GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE())

SELECT GETDATE()
SELECT CURRENT_TIMESTAMP
SELECT SYSDATETIME()
SELECT SYSDATETIMEOFFSET()
SELECT GETUTCDATE()

SELECT ISDATE('WEEKDAY')

SELECT DAY(GETDATE())
SELECT DAY('01/31/2021')

SELECT MONTH(GETDATE())
SELECT MONTH('01/31/2021')

SELECT YEAR(GETDATE())
SELECT YEAR('01/31/2021')

SELECT DATENAME (DAY, GETDATE())
SELECT DATENAME (MONTH, '2021-09-30 12:43:46.837')
SELECT DATENAME (YEAR, '2021-09-30 12:43:46.837')
SELECT DATENAME (WEEKDAY, '2021-09-30 12:43:46.837')

create table tblDateOfBirth
(
	Id int,
	Name nvarchar(20),
	DateOfBirth smalldatetime
)

insert into tblDateOfBirth values (1, 'Sam', '1995-01-01 12:43:46')
insert into tblDateOfBirth values (2, 'Pam', '1997-09-10 12:43:46')
insert into tblDateOfBirth values (3, 'John', '1989-04-30 10:43:46')
insert into tblDateOfBirth values (4, 'Sara', '1990-07-30 12:43:46')

select * from tblDateOfBirth

select Name, DateOfBirth, DATENAME(WEEKDAY, DateOfBirth) as [Day], MONTH (DateOfBirth) as [Month Number],
DATENAME (MONTH, DateOfBirth) as [Month Name], YEAR (DateOfBirth) as [Year]
from tblDateOfBirth

-- DatePart() : Returns an integer representing the specified DatePart
select DatePart(weekday, '2021-09-30 12:43:46.837')
select DateName(weekday, '2021-09-30 12:43:46.837')

-- DateAdd()
select DateAdd (Day, 20, '2021-09-30 12:43:46.837')
select DateAdd (Day, -20, '2021-09-30 12:43:46.837')
select DateAdd (Month, 2, '2021-09-30 12:43:46.837')

-- DateDiff()
select datediff(month, '2021-04-30', '2021-09-30')
select datediff(day, '2021-09-25', '2021-09-30')
