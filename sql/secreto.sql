CREATE DATABASE tienda;
USE tienda;
CREATE TABLE producto(
	codigo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL,
    codigo_fabricante INT NOT NULL
);

CREATE TABLE fabricante(
	codigo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
ALTER TABLE producto
ADD CONSTRAINT fabricante_producto
FOREIGN KEY (codigo_fabricante) REFERENCES
fabricante(codigo);
INSERT INTO fabricante(nombre) 
VALUES("Asus"),
("Lenovo"),
("HP"),
("Samsung"),
("Seagate"),
("Crucial"),
("Gigabyte"),
("Huawei"),
("Xiaomi");
INSERT INTO producto(nombre,precio,codigo_fabricante) 
VALUES("Disco Duro SATA3 1TB",86.99,5),
("Memoria RAM DDR4 8GB",120,6),
("Disco SSD 1TB",150.99,4),
("GeForce GTX 1050 Ti",185,7),
("GeForce GTX 1080 Xtreme",755,6),
("Monitor 24 LED Full HD",202,1),
("Monitor 27 LED Full HD",245.99,1),
("Portatil Yoga 520",559,2),
("Portatil Ideapad 320",444,2),
("Impresora HP Deskjet 3720",59.99,3),
("Impresora HP Laserjet Pro M26nw",180,3);

SELECT COUNT(*) FROM producto;

SELECT fabricante.nombre AS "Nombre del fabricante", COUNT(producto.codigo_fabricante) AS "Numero de productos"
FROM fabricante
LEFT JOIN producto ON fabricante.codigo = producto.codigo_fabricante
GROUP BY fabricante.codigo
ORDER BY 2 DESC;

SELECT fabricante.nombre, MAX(producto.precio), MIN(producto.precio), AVG(producto.precio)
FROM fabricante
INNER JOIN producto ON fabricante.codigo = producto.codigo_fabricante
GROUP BY fabricante.nombre;

SELECT fabricante.nombre, MAX(producto.precio), MIN(producto.precio), AVG(producto.precio), COUNT(producto.codigo_fabricante)
FROM fabricante
INNER JOIN producto ON fabricante.codigo = producto.codigo_fabricante
GROUP BY fabricante.nombre
HAVING AVG(producto.precio) > 200;
-- https://www.ibm.com/docs/es/i/7.5?topic=statement-having-clause