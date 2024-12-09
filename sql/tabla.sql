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
SELECT COUNT(id) AS "Cantidad de productos" FROM producto WHERE precio<=20 AND stock>10;
SELECT nombre,descripcion FROM producto WHERE precio<=20 AND stock>10;
SELECT AVG (stock) from producto;
SELECT MAX(stock) FROM producto;
SELECT nombre, precio FROM producto
WHERE precio > (SELECT AVG (precio) FROM producto);
SELECT SUM(stock) FROM producto;

INSERT INTO producto(nombre, descripcion, precio, stock) VALUES("Chamarra","Chamarra cafe talla unica",35,3);

SELECT precio, COUNT(*) AS productos
FROM producto
GROUP BY precio;