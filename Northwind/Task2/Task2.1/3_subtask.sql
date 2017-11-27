--По таблице Orders найти количество различных покупателей (CustomerID), сделавших заказы. 
--Использовать функцию COUNT и не использовать предложения WHERE и GROUP.

select count(distinct CustomerId) as 'Distinct customers count' from Orders;