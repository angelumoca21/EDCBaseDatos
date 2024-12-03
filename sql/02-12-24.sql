-- Creación de base de datos o schema
CREATE DATABASE blog;
CREATE SCHEMA blog;

-- Especificar sobre que base de datos se trabajara
USE blog;

-- Creación de tabla
CREATE TABLE usuario(
    id INT PRIMARY KEY,
    correoElectronico VARCHAR(30) NOT NULL UNIQUE,
    contrasena VARCHAR(40) NOT NULL,
    username VARCHAR(20) NOT NULL UNIQUE   
);

-- Eliminación de base de datos o schema
DROP DATABASE blog;

-- Agregar una columna (atributo)
ALTER TABLE usuario ADD telefono CHAR(10) UNIQUE NULL;

-- Eliminar una columna (atributo)
ALTER TABLE usuario DROP COLUMN telefono;

-- Agregando tablas restantes de blog

CREATE TABLE comentario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATETIME,
    contenido TEXT NOT NULL
);

CREATE TABLE categoria(
    id INT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL  
);

CREATE TABLE post(
    id INT PRIMARY KEY,
    fecha DATETIME,
    titulo VARCHAR(40) NOT NULL,
    contenido TEXT NOT NULL,
    multimedia BOOL NULL,
    estatus CHAR(8) CHECK(estatus IN("activo","inactivo"))
);

CREATE TABLE post_etiqueta(
	id INT PRIMARY KEY
);

CREATE TABLE etiqueta(
	id INT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL
);