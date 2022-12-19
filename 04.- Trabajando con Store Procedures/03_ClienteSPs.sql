CREATE PROCEDURE spListarCliente
AS
BEGIN
	SELECT IdCliente, Nombre, Direccion, Telefono FROM Cliente
END
GO

--spListarCliente

CREATE PROCEDURE spInsertarCliente
@Nombre VARCHAR(50),
@Direccion VARCHAR(50),
@Telefono VARCHAR(50)
AS
BEGIN
	INSERT INTO Cliente(Nombre,Direccion,Telefono) VALUES (@Nombre, @Direccion, @Telefono)
END
GO
--spInsertarCliente @Nombre = 'Juan', @Direccion = 'Calle 1 Norte #100', @Telefono = '1234-55-54-22'

CREATE PROCEDURE spEliminarCliente
@IdCliente INT
AS
BEGIN
	DELETE FROM Cliente WHERE IdCliente	= @IdCliente
END
GO

--spEliminarCliente @IdCliente = 3

CREATE PROCEDURE spActualizarCliente
@IdCliente INT,
@Nombre VARCHAR(50),
@Direccion VARCHAR(50),
@Telefono VARCHAR(50)
AS
BEGIN
	UPDATE Cliente SET
	Nombre = @Nombre,
	Direccion = @Direccion,
	Telefono = @Telefono
	WHERE IdCliente = @IdCliente
END

--spActualizarCliente @IdCliente = 1, @Nombre = 'Publico General', @Direccion ='Generica', @Telefono = '00-00-00-00'