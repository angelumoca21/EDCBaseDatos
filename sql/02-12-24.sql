-- Creación de base de datos o schema
CREATE DATABASE nombreBaseDatos;
CREATE SCHEMA nombreBaseDatos;

-- Creación de tabla
CREATE TABLE usuario(
    id INT PRIMARY KEY,
    correoElectronico VARCHAR(30) NOT NULL UNIQUE,
    contrasena VARCHAR(40) NOT NULL,
    userName VARCHAR(20) NOT NULL UNIQUE   
);

-- Eliminación de base de datos o schema
DROP DATABASE prueba;

-- Agregar una columna (atributo)
ALTER TABLE usuario ADD telefono CHAR(10) UNIQUE NULL;

-- Eliminar una columna (atributo)
ALTER TABLE usuario DROP COLUMN telefono;