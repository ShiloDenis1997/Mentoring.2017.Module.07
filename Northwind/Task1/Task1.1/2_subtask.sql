select 
    OrderID as 'OrderID'
    ,case 
        when ShippedDate IS NULL then 'Not shipped'
     end as 'ShippedDate'
from Orders where ShippedDate IS NULL;