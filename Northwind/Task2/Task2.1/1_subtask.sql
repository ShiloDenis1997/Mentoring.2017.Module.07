select sum(Quantity * UnitPrice * (1 - Discount)) as 'Totals'
from [Order Details];