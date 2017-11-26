--По таблице Orders найти количество заказов, сделанных каждым продавцом и для каждого покупателя. 
--Необходимо определить это только для заказов, сделанных в 1998 году. 
select 
    o.EmployeeID as 'EmployeeId'
    ,o.CustomerID as 'CustomerId'
    ,count(o.OrderID) as 'Amount'
from Orders o 
where year(o.OrderDate) = 1998
group by o.EmployeeID, o.CustomerID;
