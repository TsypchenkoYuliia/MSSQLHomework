CREATE PROCEDURE [dbo].CreateManufacturerWithGoods
	@manufacturerName NVARCHAR(50),
	@data NewProducts READONLY
	AS
	
	INSERT INTO Manufacturers (ManufacturerName) 
	VALUES (@manufacturerName)
	
	declare @lastId int;
	
    select @lastId = SCOPE_IDENTITY();
	
	DECLARE @goods TABLE (ProductName NVARCHAR(50),  Price money, ProductCount int, ProductDescription NVARCHAR(max), ManufacturerId int);
	INSERT INTO @goods (ProductName, Price, ProductCount, ProductDescription) select * from @data;

	UPDATE @goods 
    SET ManufacturerId = @lastId;
 
	INSERT INTO Products(ProductName, Price, ProductCount, ProductDescription, ManufacturerId) 
	select * from @goods;
	RETURN 0;
	













