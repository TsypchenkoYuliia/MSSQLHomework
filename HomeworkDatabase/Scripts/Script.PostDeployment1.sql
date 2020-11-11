/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

DECLARE @count int;

SELECT @count = COUNT(*) from [dbo].Manufacturers;

if @count = 0
begin
insert into [dbo].Manufacturers (ManufacturerName)
    values ('Danone');
insert into [dbo].Manufacturers (ManufacturerName)
    values ('Terra Food');
end

GO
DECLARE @count int;
SELECT @count = COUNT(*) from [dbo].Warehouses;

if @count = 0
begin
insert into [dbo].Warehouses (WarehouseName)
    values ('Warehouse 1');
insert into [dbo].Warehouses (WarehouseName)
    values ('Warehouse 2');
end


GO
DECLARE @count int;
SELECT @count = COUNT(*) from [dbo].Products;

if @count = 0
begin
insert into [dbo].Products (ProductName, Price, ProductCount, ProductDescription, ManufacturerId, WarehouseId)
values ('Yogurt', 15.00, 410, 'yogurt TM "Danone', 1, 1);
insert into [dbo].Products (ProductName, Price, ProductCount, ProductDescription, ManufacturerId, WarehouseId)
values ('Milk', 25.00, 219, 'Milk 2.5% cow', 2, 2);
end
