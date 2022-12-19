CREATE PROCEDURE spListarVendedor
AS
BEGIN
	SELECT IdVendedor, Nombre, Direccion, Telefono, Email FROM Vendedor
END
GO

--spListarVendedor

CREATE PROCEDURE spInsertarVendedor
@Nombre VARCHAR(50),
@Direccion VARCHAR(50),
@Telefono VARCHAR(50),
@Email VARCHAR(50)
AS
BEGIN
	INSERT INTO Vendedor(Nombre,Direccion,Telefono,Email) VALUES (@Nombre, @Direccion, @Telefono,@Email)
END
GO

--spInsertarVendedor 'Juan2','Direccion ficticia','23-22-22-22','holajuan2@email.com'

CREATE PROCEDURE spActualizarVendedor
@IdVendedor INT,
@Nombre VARCHAR(50),
@Direccion VARCHAR(50),
@Telefono VARCHAR(50),
@Email VARCHAR(50)
AS
BEGIN
	UPDATE Vendedor SET
	Nombre = @Nombre,
	Direccion = @Direccion,
	Telefono = @Telefono,
	Email = @Email
	WHERE IdVendedor = @IdVendedor
END
GO
--spActualizarVendedor 3,'Juan 3','Direccion real','00000000','holamundo@hotmail.com'

CREATE PROCEDURE spEliminarVendedor
@IdVendedor INT
AS
BEGIN
	DELETE FROM Vendedor WHERE IdVendedor = @IdVendedor
END
GO

--spEliminarVendedor 3