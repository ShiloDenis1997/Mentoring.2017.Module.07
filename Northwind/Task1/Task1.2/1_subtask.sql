select 
    ContactName as 'Contact Name'
    ,Country    as 'Country'
from Customers where Country IN ('USA', 'Canada')
order by ContactName, Address;