CREATE DATABASE tienda;
USE tienda;
CREATE TABLE producto(
	id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    precio INT UNSIGNED NOT NULL,
    stock INT UNSIGNED NOT NULL
);

INSERT INTO producto(nombre, descripcion, precio, stock)
VALUES("Camiseta","Camiseta negra simple de talla unica",10,16),
("Pantalon","Pantalon largo azul tipo chino",20,24),
("Gorra","Gorra azul con el logo de los Yankees",15,32),
("Zapatillas","Zapatillas de running de color blanco y verde",35,13);

SELECT * FROM producto;
SELECT nombre AS Nombre,precio AS PRECIO FROM producto;

SELECT AVG(stock) FROM producto;

SELECT COUNT(id) AS "Productos precio > 18" FROM producto WHERE precio>=15;
SELECT COUNT(id) FROM producto WHERE precio<=20 AND stock>20;
SELECT id,nombre,stock FROM producto WHERE precio>=15;

SELECT MAX(precio) FROM producto;

SELECT MIN(precio) FROM producto;

SELECT SUM(stock) FROM producto;

INSERT INTO producto(nombre,descripcion,precio,stock) VALUES("Chamarra","Color cafe",35,90);

SELECT precio, COUNT(*)
FROM producto
GROUP BY precio; 