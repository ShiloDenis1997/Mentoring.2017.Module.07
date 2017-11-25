select 
    ContactName as 'Contact Name'
    ,Country    as 'Country'
from Customers where Country NOT IN ('USA', 'Canada')
order by ContactName;