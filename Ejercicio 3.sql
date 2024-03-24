/* ## Ejercicio 3 */

/* 1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico). */

CREATE TABLE Productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio NUMERIC
)

/* 2. Inserta al menos cinco registros en la tabla "Productos". */

INSERT INTO Productos (nombre, precio) VALUES
    ('Camisa', 25.99),
    ('Pantalón', 35.50),
    ('Zapatos', 49.99),
    ('Gorra', 15.75),
    ('Bufanda', 12.00)

/* 3. Actualiza el precio de un producto en la tabla "Productos". */

UPDATE Productos
SET precio = 29.99
WHERE nombre = 'Camisa'

/* 4. Elimina un producto de la tabla "Productos". */

DELETE FROM Productos
WHERE nombre = 'Gorra'

/* 5. Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos"). */

CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nombre_usuario VARCHAR(255) NOT NULL,
	  productos_usuario VARCHAR(255) NOT NULL
)

INSERT INTO Usuarios (nombre_usuario, productos_usuario) VALUES
    ('Juan', 'Camisa'),
    ('María', 'Pantalón'),
    ('Luis', 'Zapatos'),
    ('Ana', 'Gorra'),
    ('Pedro', 'Bufanda'),
    ('Juan', 'Pantalón'),
    ('María', 'Zapatos'),
    ('Luis', 'Gorra'),
    ('Ana', 'Bufanda'),
    ('Pedro', 'Camisa'),
    ('Juan', 'Zapatos'),
    ('María', 'Gorra'),
    ('Luis', 'Bufanda'),
    ('Ana', 'Camisa'),
    ('Pedro', 'Pantalón'),
    ('Juan', 'Gorra'),
    ('María', 'Bufanda'),
    ('Luis', 'Camisa'),
    ('Ana', 'Pantalón'),
    ('Pedro', 'Zapatos')

SELECT Usuarios.nombre_usuario, Productos.nombre
FROM Usuarios
INNER JOIN Productos ON Usuarios.productos_usuario = Productos.nombre