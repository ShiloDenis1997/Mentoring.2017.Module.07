select 
    OrderID as 'OrderID'
    ,ShippedDate as 'ShippedDate'
    ,ShipVia as 'ShipVia'
from Orders where ShippedDate >= Convert(DATETIME, '1998-05-06') AND ShipVia >= 2;