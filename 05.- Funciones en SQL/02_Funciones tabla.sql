CREATE FUNCTION ArticulosDeCategoria
(	
	-- Add the parameters for the function here
	@IdCategoria INT

)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT A.IdArticulo, A.Nombre, A.Precio, A.Stock, A.IdCategoria, C.Descripcion
	FROM Articulo A
	JOIN Categoria C ON A.IdCategoria = C.IdCategoria
	WHERE A.IdCategoria = @IdCategoria
)
GO

SELECT * FROM ArticulosDeCategoria(1)
SELECT * FROM Articulo

