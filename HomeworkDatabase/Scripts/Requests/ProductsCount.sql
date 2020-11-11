select sum(ProductCount), manuf.ManufacturerName 
from [dbo].Products as prod left join [dbo].Manufacturers as manuf ON prod.ManufacturerId = manuf.ManufacturerId
group by manuf.ManufacturerName;
