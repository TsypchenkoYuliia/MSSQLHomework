CREATE TABLE [dbo].[Products]
(
	[ProductId] INT NOT NULL PRIMARY KEY IDENTITY,
	ProductName NVARCHAR(50) NOT NULL,
	Price money NULL,
	ProductCount int NULL ,
	ProductDescription NVARCHAR(max) NULL,
	ManufacturerId int NULL,
	WarehouseId int NULL,
	CONSTRAINT FK_Products_To_Manufacturers FOREIGN KEY (ManufacturerId)  REFERENCES dbo.Manufacturers (ManufacturerId),
	CONSTRAINT FK_Products_To_Warehouses FOREIGN KEY (WarehouseId)  REFERENCES dbo.Warehouses (WarehouseId)
)
