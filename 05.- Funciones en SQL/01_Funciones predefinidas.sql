SELECT * FROM Articulo
SELECT COUNT(*) FROM Articulo
SELECT MAX(PRECIO) FROM Articulo
SELECT MIN(PRECIO) FROM Articulo

SELECT SUM(Cantidad * Precio) FROM DetalleVenta WHERE IdVenta = 1

SELECT * FROM Venta WHERE IdVenta = 1

SELECT @@VERSION

SELECT GETDATE()

INSERT INTO Cliente VALUES('Marco','Conocida','000111223')
SELECT @@IDENTITY
SELECT @@ROWCOUNT

SELECT IdCliente,UPPER(Nombre), LEN(Nombre), Direccion, Telefono FROM Cliente