--CATEGORIA
SELECT * FROM Categoria
INSERT INTO Categoria VALUES('Muebles')
INSERT INTO Categoria VALUES('Ferretería')

INSERT INTO Categoria VALUES('Decoración')
INSERT INTO Categoria VALUES('Abarrotes')
INSERT INTO Categoria VALUES('Perfumeria')

--ARTICULO
SELECT * FROM Articulo
INSERT INTO Articulo VALUES('Mesa', 100.00, 10, 1)
INSERT INTO Articulo VALUES('Silla', 50.00, 20, 1)

INSERT INTO Articulo VALUES('Taladro', 250.00, 10, 2)
INSERT INTO Articulo VALUES('Martillo', 30.00, 5, 2)
INSERT INTO Articulo VALUES('Pico', 150.00, 15, 2)
INSERT INTO Articulo VALUES('Pala', 100, 15, 2)
INSERT INTO Articulo VALUES('Lampara', 80.00, 8, 3)
INSERT INTO Articulo VALUES('Cortinas', 120.00, 9, 3)
INSERT INTO Articulo VALUES('Mantel', 25.00, 10, 3)
INSERT INTO Articulo VALUES('Azucar 1kg', 30.00, 20, 4)
INSERT INTO Articulo VALUES('Aceite 1Lt', 48.00, 20, 4)
INSERT INTO Articulo VALUES('Frijol 1Kg', 35.00, 20, 4)
INSERT INTO Articulo VALUES('Sopa 300g', 15.00, 20, 4)
INSERT INTO Articulo VALUES('Arroz 1kg', 20.00, 20, 4)
INSERT INTO Articulo VALUES('Jabon 1kg', 15.00, 10, 5)
INSERT INTO Articulo VALUES('Papel Higienigo 4 Rollos', 20.00, 10, 5)
INSERT INTO Articulo VALUES('Shampoo 1lt', 20.00, 10, 5)

--CLIENTE
SELECT * FROM Cliente
INSERT INTO Cliente VALUES('Publico General', 'N/A', 'N/A')
INSERT INTO Cliente VALUES('Pedro Gomez', 'Calle 2 Norte #250', '553452334590')

--VENDEDOR
SELECT * FROM Vendedor
INSERT INTO Vendedor VALUES('Juan Perez','Av. Universidad #300 Col. Centro', '553423556677')
INSERT INTO Vendedor VALUES('María Sanchez','Calle 10 Oriente #45 Col. Sarabia', '552369778848')