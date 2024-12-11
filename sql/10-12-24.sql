CREATE DATABASE blog;
USE blog;

CREATE TABLE usuario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    correoElectronico VARCHAR(30) NOT NULL UNIQUE,
    contrasena VARCHAR(40) NOT NULL,
    username VARCHAR(20) NOT NULL UNIQUE   
);

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

INSERT INTO usuario(contrasena,username,correoElectronico)
VALUES ('jc8209*(^GCHN_(hcLA','Israel','israel@blog.com'),
('(*&^LKJDHC_(*#YDLKJHODG','Moni','monica@blog.com'),
('LKDJ)_*(-c.M:\"[pOwHDˆåßƒ∂','Lau','laura@blog.com'),
('LLiy)CX*Y:M<A<SC_(*N>O','Ed','edgar@blog.com'),
('&N_*JS)_Y)*(&TGOKS','Oso Pérez','perezoso@blog.com');

INSERT INTO categoria (nombre)
VALUES('Ciencia'),
('Tecnología'),
('Deportes'),
('Espectáculos'),
('Economía');

INSERT INTO etiqueta(nombre)
VALUES('Robótica'),
('Computación'),
('Teléfonos Móviles'),
('Automovilismo'),
('Campeonatos'),
('Equipos'),
('Bolsa de valores'),
('Inversiones'),
('Brokers'),
('Celebridades'),
('Eventos'),
('Moda'),
('Avances'),
('Nobel'),
('Matemáticas'),
('Química'),
('Física'),
('Largo plazo'),
('Bienes Raíces'),
('Estilo');

INSERT INTO post(titulo,fecha,contenido,multimedia,estatus,id_usuario,id_categoria)
VALUES ("Nuevo teléfono móvil en evento",'2030-04-05 00:00:00',"Phasellus laoreet eros nec vestibulum varius.",1,"activo",1,2),
("Tenemos un nuevo auto inteligente",'2025-05-04 00:00:00',"Nunc id efficitur lacus, non imperdiet quam.",1,"activo",2,2),
("Ganador del premio Nobel",'2023-12-22 00:00:00',"Curabitur bibendum vehicula dolor, nec accumsan tortor ultrices ac.",0,"activo",3,1),
("Los mejores vestidos en la alfombra roja",'2021-12-22 00:00:00',"Curabitur bibendum vehicula dolor, nec accumsan tortor ultrices ac.",1,"activo",4,4),
("Captan escándalo en cámara",'2025-01-09 00:00:00',"Vivamus nec tristique orci.",1,"inactivo",4,4),
("Se mejora la conducción autónoma",'2022-05-23 00:00:00',"Duis diam nulla, consequat ac mauris quis, viverra gravida urna.",1,"activo",1,2),
("Se descubre nueva partícula",'2023-01-10 00:00:00',"Nullam fringilla eros magna, vitae imperdiet nisl mattis et.",0,"activo",2,1),
("Químicos descubren nanomaterial",'2026-06-04 00:00:00',"Aliquam porta, tellus at porta semper, felis velit congue mauris, eu pharetra felis sem vitae tortor.",1,"activo",2,1),
("La bolsa cae estrepitosamente",'2024-04-03 00:00:00',"Phasellus laoreet eros nec vestibulum varius.",1,"activo",2,5),
("Bienes raices más baratos que nunca",'2025-04-11 00:00:00',"Curabitur bibendum vehicula dolor, nec accumsan tortor ultrices ac.",0,"inactivo",2,5),
("Se fortalece el peso frente al dolar",'2021-10-09 00:00:00',"Vivamus nec tristique orci.",1,"activo",1,5),
("Tenemos ganador de la formula e",'2022-11-11 00:00:00',"Praesent ut tellus tellus.",1,"activo",1,3),
("Ganan partido frente a visitantes",'2023-12-10 00:00:00',"Phasellus laoreet eros nec vestibulum varius.",1,"activo",2,3),
("Equipo veterano da un gran espectaculo",'2023-12-01 00:00:00',"Nunc id efficitur lacus, non imperdiet quam.",0,'inactivo',2,3),
("Escándalo con el boxeador del momento",'2025-03-05 00:00:00',"Aliquam porta, tellus at porta semper, felis velit congue mauris, eu pharetra felis sem vitae tortor.",0,"activo",4,4),
("Fuccia OS sacude al mundo",'2028-10-10 00:00:00',"Nunc id efficitur lacus.",1,"activo",1,2),
("U.S. Robotics presenta hallazgo",'2029-01-10 00:00:00',"Phasellus laoreet eros nec vestibulum varius.",1,"activo",1,2),
("Cierra campeonato mundial",'2023-04-10 00:00:00',"Aliquam porta, tellus at porta semper, felis velit congue mauris, eu pharetra felis sem vitae tortor.",0,"activo",2,3),
("Escándalo en el mundo de la moda",'2022-04-11 00:00:00',"Nunc id efficitur lacus, non imperdiet quam.",0,"activo",4,4),
("Campeona de volleiball",'2024-09-09 00:00:00',"Phasellus laoreet eros nec vestibulum varius.",1,"inactivo",2,3),
("Física cuántica",'2022-05-03 00:00:00',"Sed egestas tristique nisi et tempor.",0,"inactivo",3,1);

INSERT INTO post_etiqueta(id,id_post,id_etiqueta)
VALUES (1,1,3),
(2,2,4),
(3,2,1),
(4,2,13),
(5,3,14),
(6,3,13),
(7,3,16),
(8,4,11),
(9,4,12),
(10,4,20),
(11,5,10),
(12,6,1),
(13,6,2),
(14,6,4),
(15,6,13),
(16,7,13),
(17,7,14),
(18,7,17),
(19,8,13),
(20,8,14),
(21,8,16),
(22,9,7),
(23,9,8),
(24,9,9),
(25,9,18),
(26,10,8),
(27,10,18),
(28,11,7),
(29,11,8),
(30,12,4),
(31,12,5),
(32,13,5),
(33,13,6),
(34,14,5),
(35,14,6),
(36,15,10),
(37,16,2),
(38,16,3),
(39,16,13),
(40,17,1),
(41,17,13),
(42,18,5),
(43,18,6),
(44,19,10),
(45,19,12),
(46,19,20),
(47,20,5),
(48,21,17),
(49,21,13),
(50,21,14);

SELECT id,username FROM usuario WHERE username="Angel";

INSERT categoria(nombre) VALUE("Arte");

SELECT * FROM categoria;
SELECT * FROM usuario, post;

SELECT *
FROM usuario
INNER JOIN post ON usuario.id = post.id_usuario;

SELECT *
FROM usuario
LEFT JOIN post ON usuario.id = post.id_usuario;

SELECT *
FROM usuario
RIGHT JOIN post ON usuario.id = post.id_usuario;

SELECT *
FROM categoria 
LEFT JOIN post ON categoria.id = post.id_categoria;

SELECT *
FROM usuario
LEFT JOIN post ON usuario.id = post.id_usuario
UNION
SELECT *
FROM usuario
RIGHT JOIN post ON usuario.id = post.id_usuario;

SELECT username, COUNT(post.id) AS "Cantidad de post"
FROM usuario
LEFT JOIN post ON usuario.id = post.id_usuario
GROUP BY usuario.id
ORDER BY 2 ASC;
