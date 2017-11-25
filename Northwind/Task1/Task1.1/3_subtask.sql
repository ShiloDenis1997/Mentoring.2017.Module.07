select 
    OrderID         as 'Order Number'
    ,case 
        when ShippedDate IS NULL then 'Not shipped'
        else convert(varchar(30), ShippedDate, 0)
     end as 'Shipped Date'
from Orders where ShippedDate > Convert(DATETIME, '1998-05-06') OR ShippedDate IS NULL