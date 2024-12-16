CREATE DATABASE blog;

USE blog;

CREATE TABLE usuario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    correoElectronico VARCHAR(30) NOT NULL UNIQUE,
    contrasena VARCHAR(40) NOT NULL,
    username VARCHAR(20) NOT NULL UNIQUE   
);

-- Agregando tablas restantes de blog

CREATE TABLE comentario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATETIME,
    contenido TEXT NOT NULL,
    id_usuario INT NOT NULL,
    id_post INT NOT NULL
);

CREATE TABLE categoria(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL  
);

CREATE TABLE post(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATETIME,
    titulo VARCHAR(40) NOT NULL,
    contenido TEXT NOT NULL,
    multimedia BOOL NULL,
    estatus CHAR(8) CHECK(estatus IN("activo","inactivo")),
    id_usuario INT NOT NULL,
    id_categoria INT NOT NULL
);

CREATE TABLE post_etiqueta(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_post INT NOT NULL,
    id_etiqueta INT NOT NULL
);

CREATE TABLE etiqueta(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL
);

-- Modificando restricciones de columnas 
ALTER TABLE usuario
CHANGE COLUMN id id INT NOT NULL AUTO_INCREMENT;

-- Creando relaciones

ALTER TABLE comentario
ADD CONSTRAINT usuario_comentario
FOREIGN KEY (id_usuario) REFERENCES
usuario(id);

ALTER TABLE comentario
ADD CONSTRAINT post_comentario
FOREIGN KEY (id_post) REFERENCES
post(id);

ALTER TABLE post
ADD CONSTRAINT usuario_post
FOREIGN KEY (id_usuario) REFERENCES
usuario(id);

ALTER TABLE post
ADD CONSTRAINT categoria_post
FOREIGN KEY (id_categoria) REFERENCES
categoria(id);

ALTER TABLE post_etiqueta
ADD CONSTRAINT postEtiqueta_post
FOREIGN KEY (id_post) REFERENCES
post(id);

ALTER TABLE post_etiqueta
ADD CONSTRAINT postEtiqueta_etiqueta
FOREIGN KEY (id_etiqueta) REFERENCES
etiqueta(id);