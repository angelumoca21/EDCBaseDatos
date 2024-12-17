CREATE DATABASE registroPiezas;
USE registroPiezas;
CREATE TABLE proveedor(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    direccion VARCHAR(40) NOT NULL,
    provincia VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL
);
CREATE TABLE pieza(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    color VARCHAR(15) NOT NULL,
    precio DOUBLE NOT NULL,
    id_categoria INT UNSIGNED NOT NULL
);
CREATE TABLE categoria(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);
CREATE TABLE proveedor_suministra_pieza(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cantidad INT UNSIGNED NOT NULL,
    fecha DATETIME NOT NULL,
    id_proveedor INT UNSIGNED NOT NULL,
    id_pieza INT UNSIGNED NOT NULL
);

ALTER TABLE proveedor_suministra_pieza
ADD CONSTRAINT proveedor_suministra_pieza_proveedor
FOREIGN KEY (id_proveedor) REFERENCES
proveedor(id);

ALTER TABLE proveedor_suministra_pieza
ADD CONSTRAINT proveedor_suministra_pieza_pieza
FOREIGN KEY (id_pieza) REFERENCES
pieza(id);

ALTER TABLE pieza
ADD CONSTRAINT pieza_categoria
FOREIGN KEY (id_categoria) REFERENCES
categoria(id);