CREATE TABLE Categoria(
IdCategoria INT NOT NULL,
Descripcion NVARCHAR(50)
CONSTRAINT PK_IdCategoria PRIMARY KEY (IdCategoria)
)

SELECT * FROM Categoria
SELECT * FROM Articulo

INSERT INTO Categoria VALUES(1, 'Muebles')
INSERT INTO Categoria VALUES(2, 'Ferreteria')
INSERT INTO Categoria VALUES(3, 'Decoracion')

--1 ELIMINAR COLUMNA Categoria

ALTER TABLE Articulo
DROP COLUMN Categoria

--2 AGREGAR LA COLUMNA IdCategoria Y APUNTAR A LA CLAVE PRIMARIA DE Categoria

ALTER TABLE Articulo
ADD IdCategoria INT 

SELECT * FROM Articulo

ALTER TABLE Articulo
ADD FOREIGN KEY (IdCategoria) REFERENCES Categoria(IdCategoria)

--3 ACTUALIZAR LAS CATEGORIAS

UPDATE Articulo 
SET IdCategoria = 4
WHERE Id = 5