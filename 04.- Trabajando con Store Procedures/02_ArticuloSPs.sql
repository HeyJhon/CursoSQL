CREATE PROCEDURE spListarArticulo
AS
BEGIN
	SELECT A.IdArticulo,A.Nombre,A.Precio, A.Stock, A.IdCategoria, C.Descripcion
	FROM Articulo A
	LEFT JOIN Categoria C ON A.IdCategoria = C.IdCategoria
END
GO
--spListarArticulo

CREATE PROCEDURE spInsertarArticulo
@Nombre VARCHAR(50),
@Precio DECIMAL(18,2),
@Stock INT,
@IdCategoria INT
AS
BEGIN
	INSERT INTO Articulo(Nombre, Precio, Stock, IdCategoria) 
	VALUES (@Nombre, @Precio, @Stock, @IdCategoria)
END
GO

--EXEC spInsertarArticulo 'Sofa', 500.00,5,1

CREATE PROCEDURE spActualizarArticulo
@IdArticulo INT,
@Nombre VARCHAR(50),
@Precio DECIMAL(18,2),
@Stock INT,
@IdCategoria INT
AS
BEGIN
	UPDATE Articulo SET
	Nombre = @Nombre,
	Precio = @Precio,
	Stock = @Stock,
	IdCategoria = @IdCategoria
	WHERE IdArticulo = @IdArticulo
END
GO
--SpActualizarArticulo 22,'Sofa Cama',500.00,5, 1

CREATE PROCEDURE spEliminarArticulo
@IdArticulo INT
AS
BEGIN
	DELETE FROM Articulo WHERE IdArticulo = @IdArticulo
END

-- spEliminarArticulo @IdArticulo = 22