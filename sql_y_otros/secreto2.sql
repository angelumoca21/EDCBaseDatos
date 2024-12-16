CREATE DATABASE test;
USE test;

CREATE TABLE alumno(
	id INT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido1 VARCHAR(25) NOT NULL,
    apellido2 VARCHAR(25) NOT NULL,
    nota INT NOT NULL
);

delimiter //
CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT ON alumno 
FOR EACH ROW
BEGIN
	IF NEW.nota < 0 THEN
		SET NEW.nota = 0;
	ELSEIF NEW.nota > 10 THEN
		SET NEW.nota = 10;
	END IF;
END;
delimiter;

delimiter //
CREATE TRIGGER trigger_check_nota_before_update
BEFORE UPDATE ON alumno 
FOR EACH ROW
BEGIN
	IF NEW.nota < 0 THEN
		SET NEW.nota = 0;
	ELSEIF NEW.nota > 10 THEN
		SET NEW.nota = 10;
	END IF;
END;
delimiter;

INSERT INTO alumno(id,nombre,apellido1,apellido2,nota) VALUES (1,'Juan',"Perez","Ramirez", -5);
INSERT INTO alumno(id,nombre,apellido1,apellido2,nota) VALUES (2,'Pedro',"Morales","Solano", 5);
INSERT INTO alumno(id,nombre,apellido1,apellido2,nota) VALUES (3,'Luis',"Martinez","Gil", 25);

SELECT * FROM alumno;

UPDATE alumno SET nota=8 WHERE id=1;
UPDATE alumno SET nota=100 WHERE id=2;
UPDATE alumno SET nota=-7 WHERE id=3;