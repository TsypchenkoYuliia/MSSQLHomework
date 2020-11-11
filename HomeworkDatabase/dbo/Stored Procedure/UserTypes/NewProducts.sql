CREATE TYPE [dbo].[NewProducts] AS TABLE
(
	ProductName NVARCHAR(50) NOT NULL,
	Price money NULL,
	ProductCount int NULL ,
	ProductDescription NVARCHAR(max) NULL
)
