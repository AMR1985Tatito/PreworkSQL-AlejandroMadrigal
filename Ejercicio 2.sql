/* ## Ejercicio 2 */

/* 1. Crea una base de datos llamada "MiBaseDeDatos". */

CREATE DATABASE MiBaseDeDatos

/* 2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero). */

CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    edad INTEGER
)

/* 3. Inserta dos registros en la tabla "Usuarios". */

INSERT INTO Usuarios (nombre, edad) VALUES ('Juan', 30);
INSERT INTO Usuarios (nombre, edad) VALUES ('María', 25)

/* 4. Actualiza la edad de un usuario en la tabla "Usuarios". */

UPDATE Usuarios SET edad = 35 WHERE id = 1

/* 5. Elimina un usuario de la tabla "Usuarios". */

DELETE FROM Usuarios WHERE id = 2

/* Nivel de dificultad: Moderado */

/* 1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto). */

CREATE TABLE Ciudades (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL
)

/* 2. Inserta al menos tres registros en la tabla "Ciudades". */

INSERT INTO Ciudades (nombre, pais) VALUES ('Nueva York', 'Estados Unidos');
INSERT INTO Ciudades (nombre, pais) VALUES ('Londres', 'Reino Unido');
INSERT INTO Ciudades (nombre, pais) VALUES ('Tokio', 'Japón')

/* 3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades". */

ALTER TABLE Usuarios 
ADD CONSTRAINT fk_ciudad_id 
FOREIGN KEY (id) 
REFERENCES Ciudades(id)

/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN). */

SELECT Usuarios.nombre AS nombre_usuario, Ciudades.nombre AS nombre_ciudad, Ciudades.pais
FROM Usuarios
LEFT JOIN Ciudades ON Usuarios.id = Ciudades.id

/* 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN). */

SELECT Usuarios.nombre AS nombre_usuario, Ciudades.nombre AS nombre_ciudad, Ciudades.pais
FROM Usuarios
INNER JOIN Ciudades ON Usuarios.id = Ciudades.id