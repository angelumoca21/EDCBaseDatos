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
VALUES ('Ciencia'),
('Tecnología'),
('Deportes'),
('Espectáculos'),
('Economía');





INSERT INTO etiqueta(nombre) VALUES ('Robótica'),
('Computación')
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

INSERT INTO post (titulo,fecha,contenido,multimedia,estatus,id_usuario,id_categoria)
VALUES ('Nuevo teléfono móvil en evento','2030-04-05 00:00:00','Phasellus laoreet eros nec vestibulum varius.',1,'activo',1,2),
('Tenemos un nuevo auto inteligente','2025-05-04 00:00:00','Nunc id efficitur lacus, non imperdiet quam.',1,'activo',2,2),
('Ganador del premio Nobel por trabajo en genética','2023-12-22 00:00:00','Curabitur bibendum vehicula dolor, nec accumsan tortor ultrices ac.',0,'activo',3,1),
('Los mejores vestidos en la alfombra roja','2021-12-22 00:00:00','Curabitur bibendum vehicula dolor, nec accumsan tortor ultrices ac.','activo',4,4),
('Captan escándalo en cámara','2025-01-09 00:00:00','Vivamus nec tristique orci.',1,'inactivo',4,4),
('Se mejora la conducción autónoma de vehículos','2022-05-23 00:00:00','Duis diam nulla, consequat ac mauris quis, viverra gravida urna.',1,'activo',1,2),
('Se descubre nueva partícula del modelo estandar','2023-01-10 00:00:00','Nullam fringilla eros magna, vitae imperdiet nisl mattis et.','activo',2,1),
('Químicos descubren nanomaterial','2026-06-04 00:00:00','Aliquam porta, tellus at porta semper, felis velit congue mauris, eu pharetra felis sem vitae tortor.',1,'activo',2,1),
('La bolsa cae estrepitosamente','2024-04-03 00:00:00','Phasellus laoreet eros nec vestibulum varius.',1,'activo',2,5),
('Bienes raices más baratos que nunca','2025-04-11 00:00:00','Curabitur bibendum vehicula dolor, nec accumsan tortor ultrices ac.',0,'inactivo',2,5);
('Se fortalece el peso frente al dolar','2021-10-09 00:00:00','Vivamus nec tristique orci. Nullam fringilla eros magna, vitae imperdiet nisl mattis et. Ut quis malesuada felis. Proin at dictum eros, eget sodales libero. Sed egestas tristique nisi et tempor. Ut cursus sapien eu pellentesque posuere. Etiam eleifend varius cursus.\n\nNullam viverra quam porta orci efficitur imperdiet. Quisque magna erat, dignissim nec velit sit amet, hendrerit mollis mauris. Mauris sapien magna, consectetur et vulputate a, iaculis eget nisi. Nunc est diam, aliquam quis turpis ac, porta mattis neque. Quisque consequat dolor sit amet velit commodo sagittis. Donec commodo pulvinar odio, ut gravida velit pellentesque vitae. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\nMorbi vulputate ante quis elit pretium, ut blandit felis aliquet. Aenean a massa a leo tristique malesuada. Curabitur posuere, elit sed consectetur blandit, massa mauris tristique ante, in faucibus elit justo quis nisi. Ut viverra est et arcu egestas fringilla. Mauris condimentum, lorem id viverra placerat, libero lacus ultricies est, id volutpat metus sapien non justo. Nulla facilisis, sapien ut vehicula tristique, mauris lectus porta massa, sit amet malesuada dolor justo id lectus. Suspendisse sit amet tempor ligula. Nam sit amet nisl non magna lacinia finibus eget nec augue. Aliquam ornare cursus dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nDonec ornare sem eget massa pharetra rhoncus. Donec tempor sapien at posuere porttitor. Morbi sodales efficitur felis eu scelerisque. Quisque ultrices nunc ut dignissim vehicula. Donec id imperdiet orci, sed porttitor turpis. Etiam volutpat elit sed justo lobortis, tincidunt imperdiet velit pretium. Ut convallis elit sapien, ac egestas ipsum finibus a. Morbi sed odio et dui tincidunt rhoncus tempor id turpis.\n\nProin fringilla consequat imperdiet. Ut accumsan velit ac augue sollicitudin porta. Phasellus finibus porttitor felis, a feugiat purus tempus vel. Etiam vitae vehicula ex. Praesent ut tellus tellus. Fusce felis nunc, congue ac leo in, elementum vulputate nisi. Duis diam nulla, consequat ac mauris quis, viverra gravida urna.','activo',1,5);
('Tenemos ganador de la formula e','2022-11-11 00:00:00','Praesent ut tellus tellus.',1,'activo',1,3);
('Ganan partido frente a visitantes','2023-12-10 00:00:00','Phasellus laoreet eros nec vestibulum varius.',1,'activo',2,3);
('Equipo veterano da un gran espectaculo','2023-12-01 00:00:00','Nunc id efficitur lacus, non imperdiet quam.',0,'inactivo',2,3);
('Escándalo con el boxeador del momento','2025-03-05 00:00:00','Aliquam porta, tellus at porta semper, felis velit congue mauris, eu pharetra felis sem vitae tortor.',0,'activo',4,4);
('Fuccia OS sacude al mundo','2028-10-10 00:00:00','Nunc id efficitur lacus.',1,'activo',1,2),
('U.S. Robotics presenta hallazgo','2029-01-10 00:00:00','Phasellus laoreet eros nec vestibulum varius.',1,'activo',1,2),
('Cierra campeonato mundial de football de manera impresionante','2023-04-10 00:00:00','Aliquam porta, tellus at porta semper, felis velit congue mauris, eu pharetra felis sem vitae tortor.',0,'activo',2,3);
('Escándalo en el mundo de la moda','2022-04-11 00:00:00','Nunc id efficitur lacus, non imperdiet quam.',0,'activo',4,4),
('Tenemos campeona del mundial de volleiball','2024-09-09 00:00:00','Phasellus laoreet eros nec vestibulum varius.',1,'inactivo',2,3),
('Se descubre la unión entre astrofísica y fisica cuántica','2022-05-03 00:00:00','Sed egestas tristique nisi et tempor.',0,'inactivo',3,1);


INSERT INTO post_etiqueta(id_post_id,id_etiqueta_id)
VALUES (1,3),
(2,43,11);
(3,44,2);
(4,44,4);
(5,45,14);
(6,45,13);
(7,46,10);
(8,46,11);
(9,46,12);
(10,46,20);
(11,47,10);
(12,48,1);
(13,48,2);
(14,48,4);
(15,48,13);
(16,49,13);
(17,49,14);
(18,49,17);
(19,50,13);
(20,50,14);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (21,50,16);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (22,51,7);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (23,51,8);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (24,51,9);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (25,51,18);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (26,52,8);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (27,52,18);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (28,53,7);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (29,53,8);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (30,54,4);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (31,54,5);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (32,55,5);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (33,55,6);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (34,56,5);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (35,56,6);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (36,56,10);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (37,58,2);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (38,58,3);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (39,58,13);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (40,59,1);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (41,59,13);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (42,57,10);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (43,60,5);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (44,60,6);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (45,61,10);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (46,61,12);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (47,61,20);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (48,62,5);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (49,62,10);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (50,63,13);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (51,63,14);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (52,63,17);
INSERT INTO `platziblog.posts_etiquetas` (`id`,`post_id`,`etiqueta_id`) VALUES (53,52,19);
