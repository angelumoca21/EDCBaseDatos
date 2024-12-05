-- Agregado de datos
INSERT INTO usuario(correoElectronico,contrasena,username) VALUES("angelmoca21@gmail.com","123456","angelumoca21");
INSERT INTO usuario(correoElectronico,contrasena,username) VALUES("pedro123@gmail.com","789456","pedro");
SELECT * FROM usuario;

-- Actualizar informacion
UPDATE usuario SET username="pedro123" WHERE id=2;

-- Eliminar informacion
INSERT INTO usuario(correoElectronico,contrasena,username) VALUES("alex@gmail.com","56789","alex");
DELETE FROM usuario WHERE id=3;

INSERT INTO categoria(nombre) VALUES("Festividad");
SELECT * FROM categoria;

INSERT INTO post(fecha,titulo,contenido,multimedia,estatus,id_usuario,id_categoria) VALUES('2024-12-25 00:00:01',"¡Feliz navidad!","¡Espero tengan feliz dia, una abrazo!",1,"activo",1,1);
SELECT * FROM post;

INSERT INTO etiqueta(nombre) VALUES("Navidad");
INSERT INTO etiqueta(nombre) VALUES("Diciembre");
SELECT * FROM etiqueta;

INSERT INTO post_etiqueta(id_post,id_etiqueta) 
VALUES (1,1), (1,2);
SELECT * FROM post_etiqueta;

INSERT INTO comentario(fecha,contenido,id_usuario,id_post) VALUES('2024-12-25 00:01:00',"¡Gracias!",2,1);
SELECT * FROM comentario;