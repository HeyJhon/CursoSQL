SELECT * FROM Articulo
SELECT  * FROM Categoria

UPDATE Categoria SET Descripcion = 'Ferretería' WHERE IdCategoria = 2

SELECT A.Id, A.Nombre, A.Precio, C.Descripcion 
FROM Articulo A
JOIN Categoria C ON A.IdCategoria = C.IdCategoria