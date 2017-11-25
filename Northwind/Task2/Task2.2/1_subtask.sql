--По таблице Orders найти количество заказов с группировкой по годам. В результатах запроса надо возвращать две колонки c 
--названиями Year и Total. Написать проверочный запрос, который вычисляет количество всех заказов.
select 
    OrderDate as 'Order Year', 
    count(OrderId) as 'Orders count' 
from orders
group by OrderDate;