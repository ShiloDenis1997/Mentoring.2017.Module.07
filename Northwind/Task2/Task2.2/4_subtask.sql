--Найти покупателей и продавцов, которые живут в одном городе. Если в городе живут только один или несколько продавцов,
--или только один или несколько покупателей, то информация о таких покупателя и продавцах не должна попадать в результирующий набор.
--Не использовать конструкцию JOIN

select 
CustomerId              as 'CustomerId',
Employees.EmployeeID    as 'EmployeeId',
City                    as 'City'
from Customers c
cross apply (select EmployeeId from Employees e where e.City = c.City) Employees;