CREATE DATABASE prueba;
USE prueba;

CREATE TABLE persona(
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    edad INT,
    nombre VARCHAR(50)
);

delimiter //
CREATE TRIGGER revisionEdad
BEFORE INSERT
ON persona 
FOR EACH ROW
BEGIN
	IF NEW.edad < 0 THEN
		SET NEW.edad = 0;
	END IF;
END;
delimiter;

INSERT INTO persona(edad,nombre) VALUES(-10,"Pedro");
INSERT INTO persona(edad,nombre) VALUES(6,"Angel");
UPDATE persona SET edad=-4 WHERE id=3;
DELETE FROM persona WHERE id=1;

SELECT * FROM persona;
SHOW TRIGGERS;
DROP TRIGGER revisionEdad;