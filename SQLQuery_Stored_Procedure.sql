select * from tblEmployee

-- Stored Procedure
CREATE PROCEDURE spGetEmployees 
AS
BEGIN
	Select Name, Gender From tblEmployee
END

-- Call stored procedure in different way
spGetEmployees
Exec spGetEmployees
Execute spGetEmployees