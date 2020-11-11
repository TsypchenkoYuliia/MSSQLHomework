CREATE PROCEDURE [dbo].[AddProductToWarehouse]
	@productName NVARCHAR(50),
	@price money,
	@productCount int,
	@productDescription NVARCHAR(max),
	@manufacturerId int,
	@warehouseId int
AS
	INSERT INTO [dbo].Products (ProductName, Price, ProductCount, ProductDescription, ManufacturerId, WarehouseId)
values (@productName, @price, @productCount, @productDescription, @manufacturerId, @warehouseId);
RETURN 0;



