--Найти всех покупателей, которые живут в одном городе
select c1.CustomerID as 'Customer id'
       ,c2.CustomerID as 'Neighbor id'
       ,c1.City as 'City'
from Customers c1
    left join Customers c2 ON c1.CustomerID <> c2.CustomerID AND c1.City = c2.City
order by c1.CustomerID;