CREATE PROCEDURE spListarCategorias
AS
BEGIN
	SELECT * FROM Categoria
END
GO

CREATE PROCEDURE spInsertarCategoria
@Descripcion NVARCHAR(50)
AS
BEGIN
	INSERT INTO Categoria VALUES (@Descripcion)
END
GO

CREATE PROCEDURE spActualizarCategoria
@Descripcion NVARCHAR(50),
@IdCategoria INT
AS
BEGIN
	UPDATE Categoria SET Descripcion = @Descripcion	WHERE IdCategoria = @IdCategoria
END
GO

CREATE PROCEDURE spEliminarCategoria
@IdCategoria INT
AS
BEGIN
	DELETE FROM Categoria WHERE IdCategoria = @IdCategoria
END