SELECT * FROM Categoria
--CRUD
-- CREATE - READ - UPDATE - DELETE
--CREATE
INSERT INTO Categoria VALUES ('Vinos y Licores')

--READ
SELECT IdCategoria, Descripcion FROM Categoria
--WHERE IdCategoria = 1
--WHERE IdCategoria IN (1,2,3)
--WHERE Descripcion = 'Muebles'
--WHERE Descripcion IN ('Muebles','Decoraci�n')
WHERE Descripcion LIKE '%e%'

--UPDATE
UPDATE Categoria SET Descripcion = 'Perfumer�a'	WHERE IdCategoria = 5

--DELETE
--INSERT INTO Categoria VALUES ('ABC')
--SELECT * FROM Categoria
--DELETE FROM Categoria WHERE IdCategoria = 6