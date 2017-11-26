--По таблице Employees найти для каждого продавца его руководителя.
select 
    EmployeeID as 'EmployeeID' 
    ,FirstName as 'Seller name'
    ,(select FirstName from Employees where EmployeeID = e.ReportsTo) as 'Boss name'
from Employees e;