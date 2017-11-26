--Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 
select distinct e.EmployeeId as 'EmployeeId'
    ,e.FirstName as 'First name'
from Employees e
        inner join EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
        inner join Territories t ON et.TerritoryID = t.TerritoryID
        inner join Region r on r.RegionID = t.RegionID
where r.RegionDescription = 'Western';