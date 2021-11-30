select * from tblPerson

-- insert values
insert into tblPerson values (6, 'Tom', 'tom.com', 3, 27, 'California')

-- distinct column (unique values of column)
select distinct City from [sample].[dbo].tblPerson

-- filtering
select * from tblPerson Where City = 'London'
select * from tblPerson Where City <> 'London'
select * from tblPerson Where City != 'London'

-- Joining multiple condition using AND or OR operators
select * from tblPerson Where (City = 'London' or City = 'Alaska') AND Age > 25

-- Sorting
select * from tblPerson order by Name -- Ascending
select * from tblPerson order by Name DESC -- Decending
select * from tblPerson order by Name DESC, Age ASC -- Sort Multiple Columns