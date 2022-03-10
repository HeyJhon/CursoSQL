USE DemoDB

--DATA DEFINITION LANGUAGE DDL
--CREATE, DROP, ALTER, TRUNCATE

--INT Enteros y con signo o sin signo
--VARCHAR Cadenas de caracteres, numeros, y caracteres especiales
--DATE  Fechas
--TIME Dia, hora, minuto, segundo

CREATE TABLE Articulo(
Id INT NOT NULL,
Nombre VARCHAR(50),
Categoria VARCHAR(50),
Precio DECIMAL(18,2)
)

--DATA MANIPULATION LANGUAGE DML
--INSERT, SELECT, UPDATE, DELETE

INSERT INTO Articulo VALUES (1,'Mesa','Muebles',100.00)
INSERT INTO Articulo VALUES (2,'Silla','Muebles',50.00)
INSERT INTO Articulo VALUES (3,'Pinzas','Ferreteria',85.50)
INSERT INTO Articulo VALUES (4,'Taladro','Ferreteria',650.25)
INSERT INTO Articulo VALUES (5,'Lampara','Decoracion',120.00)

SELECT * FROM Articulo