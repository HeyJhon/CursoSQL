CREATE PROCEDURE spCrearVenta
	@IdCliente INT,
	@IdVendedor INT
AS
BEGIN
	INSERT Venta(Fecha,IdCliente,IdVendedor,Total)
	VALUES(GETDATE(),@IdCliente, @IdVendedor,0)
END
GO
--spCrearVenta 1,1
--select * from Venta
--select * from Cliente
--select * from Vendedor

CREATE PROCEDURE spActualizarClienteVenta
@IdVenta INT,
@IdCliente INT
AS
BEGIN
	UPDATE Venta SET IdCliente = @IdCliente WHERE IdVenta = @IdVenta
END
GO
--spActualizarClienteVenta @IdVenta = 1, @IdCliente =2

CREATE PROCEDURE spActualizarVendedorVenta
@IdVenta INT,
@IdVendedor INT
AS
BEGIN
	UPDATE Venta SET IdVendedor = @IdVendedor WHERE IdVenta = @IdVenta
END
GO
--spActualizarVendedorVenta @IdVenta = 1, @IdVendedor = 2

CREATE PROCEDURE spActualizarTotalVenta
@IdVenta INT,
@Importe DECIMAL(18,2)
AS
BEGIN
	UPDATE Venta SET Total = Total + @Importe WHERE IdVenta = @IdVenta
END
GO
--spActualizarTotalVenta 1, 100

CREATE PROCEDURE spListarVenta
AS
BEGIN
	SELECT V.IdVenta, V.Fecha, V.IdCliente, C.Nombre, V.IdVendedor, D.Nombre, V.Total FROM Venta V
	LEFT JOIN Cliente C ON V.IdCliente = C.IdCliente
	LEFT JOIN Vendedor D ON V.IdVendedor = D.IdVendedor
END

--spListarVenta