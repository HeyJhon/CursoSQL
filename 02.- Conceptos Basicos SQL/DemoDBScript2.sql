SELECT * FROM Articulo

DELETE FROM Articulo

INSERT INTO Articulo VALUES (1,'Mesa','Muebles',100.00)
INSERT INTO Articulo VALUES (2,'Silla','Muebles',50.00)
INSERT INTO Articulo VALUES (3,'Pinzas','Ferreteria',85.50)
INSERT INTO Articulo VALUES (4,'Taladro','Ferreteria',650.25)
INSERT INTO Articulo VALUES (5,'Lampara','Decoracion',120.00)

ALTER TABLE Articulo 
ADD CONSTRAINT PK_IdArticulo
PRIMARY KEY (Id)

DELETE FROM Articulo WHERE Id = 6


