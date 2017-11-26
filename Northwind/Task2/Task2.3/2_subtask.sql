--Выдать в результатах запроса имена всех заказчиков из таблицы Customers и суммарное количество их заказов из таблицы Orders. 
--Принять во внимание, что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса. 
--Упорядочить результаты запроса по возрастанию количества заказов.
select c.ContactName        as 'ContactName'
       ,count(o.OrderId)    as 'OrdersCount'
from Customers c 
    left join Orders o on c.CustomerId = o.CustomerId
group by c.CustomerID, c.ContactName
order by 'OrdersCount';