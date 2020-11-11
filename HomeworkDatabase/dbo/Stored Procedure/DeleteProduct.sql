CREATE PROCEDURE [dbo].[DeleteProduct]
	@id int 
AS
	DELETE Products WHERE ProductId=@id;
RETURN 0;
