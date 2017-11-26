--Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT
select EmployeeID from Employees e
    where (select count(OrderID) from Orders o where o.EmployeeID =e.EmployeeID) > 150;