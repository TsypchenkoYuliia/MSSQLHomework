CREATE VIEW [dbo].[ProductsManufacturerWarehouse] AS 
	SELECT prod.ProductName, manuf.ManufacturerName, storage.WarehouseName 
	from [dbo].Products as prod
	left join [dbo].Manufacturers as manuf ON prod.ManufacturerId = manuf.ManufacturerId
	left join [dbo].Warehouses as storage ON prod.WarehouseId = storage.WarehouseId
 	