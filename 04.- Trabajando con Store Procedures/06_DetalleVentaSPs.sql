CREATE PROCEDURE spInsertarDetalleVenta
	@IdArticulo INT,
	@Cantidad INT,
	@IdVenta INT
AS
BEGIN

	IF (SELECT Stock FROM Articulo WHERE IdArticulo = @IdArticulo) <= @Cantidad
		BEGIN
			SELECT -1 AS RESULT, 'Cantidad es mayor que Stock disponible' AS MENSAJE
		END
	ELSE
		BEGIN
			DECLARE @Precio DECIMAL(18,2) 
			SET @Precio = (SELECT Precio FROM Articulo WHERE IdArticulo = @IdArticulo)

			IF(SELECT COUNT(*) FROM DetalleVenta WHERE IdVenta = @IdVenta AND IdArticulo = @IdArticulo) > 0
				BEGIN
					UPDATE DetalleVenta SET Cantidad = Cantidad + @Cantidad
					WHERE IdVenta = @IdVenta AND IdArticulo = @IdArticulo
				END
			ELSE
				BEGIN
					INSERT INTO DetalleVenta(IdArticulo, Cantidad, Precio, IdVenta) 
					VALUES(@IdArticulo, @Cantidad, @Precio, @IdVenta)
				END

				DECLARE @Importe DECIMAL(18,2)
				SET @Importe = @Cantidad * @Precio
				UPDATE Venta SET Total = Total + @Importe
				WHERE IdVenta = @IdVenta
				
				UPDATE Articulo SET Stock = Stock - @Cantidad 
				WHERE IdArticulo = @IdArticulo

				SELECT 1 AS RESULT, 'Articulo Insertado Correctamente' AS MENSAJE
		END
END
GO

SELECT * FROM Venta
SELECT * FROM Articulo WHERE IdArticulo IN (14,15,16)
SELECT * FROM DetalleVenta

--spInsertarDetalleVenta @IdArticulo=14, @Cantidad = 3, @IdVenta = 1
--spInsertarDetalleVenta @IdArticulo=14, @Cantidad = 2, @IdVenta = 1
--spInsertarDetalleVenta @IdArticulo=15, @Cantidad = 1, @IdVenta = 1
--spInsertarDetalleVenta @IdArticulo=16, @Cantidad = 2, @IdVenta = 1