select * from tblEmployee2

Select ISNULL(NULL, 'No Manager') as Manager
Select COALESCE(NULL, 'No Manager') as Manager
CASE WHEN EXPression THEN '' ELSE '' END

-- ISNULL() function
Select		E.Name As Employee, ISNULL(M.Name, 'No Manager') as Manager
from		tblEmployee2 E
Left Join	tblEmployee2 M
On			E.ManagerId = M.EmployeeId

-- COALESCE() function
Select		E.Name As Employee, COALESCE(M.Name, 'No Manager') as Manager
from		tblEmployee2 E
Left Join	tblEmployee2 M
On			E.ManagerId = M.EmployeeId

-- CASE Statement
Select		E.Name As Employee, 
			CASE 
				WHEN M.NAME IS NULL THEN 'No Manager' ELSE M.NAME
			END as Manager
from		tblEmployee2 E
Left Join	tblEmployee2 M
On			E.ManagerId = M.EmployeeId