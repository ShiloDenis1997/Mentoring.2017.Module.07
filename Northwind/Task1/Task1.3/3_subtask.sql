--Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается 
--на буквы из диапазона b и g, не используя оператор BETWEEN. 

select 
    CustomerId as 'CustomerId'
    ,Country   as 'Country'
from Customers where SUBSTRING(Country, 1, 1) IN ('b', 'c', 'd', 'e', 'f', 'g')
order by Country;

select 
    CustomerId as 'CustomerId'
    ,Country   as 'Country'
from Customers where SUBSTRING(Country, 1, 1) >= 'b' AND SUBSTRING(Country, 1, 1) <= 'g'
order by Country;