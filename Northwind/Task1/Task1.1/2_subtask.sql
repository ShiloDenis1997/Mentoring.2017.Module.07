--Написать запрос, который выводит только недоставленные заказы из таблицы Orders. 
--В результатах запроса возвращать для колонки ShippedDate вместо значений NULL 
--строку ‘Not Shipped’ (использовать системную функцию CASЕ). Запрос должен возвращать 
--только колонки OrderID и ShippedDate.

select 
    OrderID as 'OrderID'
    ,case 
        when ShippedDate IS NULL then 'Not shipped'
     end as 'ShippedDate'
from Orders where ShippedDate IS NULL;