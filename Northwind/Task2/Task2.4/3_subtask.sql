--Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа 
--(подзапрос по таблице Orders). Использовать оператор EXISTS
select CustomerId from Customers c
    where not exists (select o.OrderId from Orders o where o.CustomerID = c.CustomerID);