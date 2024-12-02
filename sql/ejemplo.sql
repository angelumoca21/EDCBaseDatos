CREATE DATABASE blog;
CREATE SCHEMA prueba;
USE blog;
CREATE TABLE usuario(
id INT PRIMARY KEY,
user_name VARCHAR(30) UNIQUE NOT NULL,
password VARCHAR(30) NOT NULL,
email VARCHAR(40) UNIQUE NOT NULL
);
DESCRIBE usuario;
SELECT * FROM usuario;
DROP DATABASE prueba;
DROP TABLE post;
ALTER TABLE usuario ADD ejemplo_atributo_borrar INT NOT NULL UNIQUE;
ALTER TABLE usuario DROP COLUMN ejemplo_atributo_borrar;
INSERT INTO usuario(id,user_name,password,email) VALUES(1,"angelmoca21","12345","angelmoca21@gmail.com");
UPDATE usuario SET password="98765", user_name="angelumoca21" WHERE id = 1;