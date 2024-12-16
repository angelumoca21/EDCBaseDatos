# Triggers en SQL

Un trigger o disparador es un script que se usa en lenguaje de programación SQL, consiste en una serie de reglas predefinidas que se asocian a una tabla. Estas reglas se aplican a la base de datos cuando se realizan determinadas operaciones en la tabla, por ejemplo, al añadir, actualizar o eliminar registros. Dicho de otra manera, el trigger desencadena determinadas acciones de forma automática en las tablas de la base de datos cuando se insertan, modifican y se añaden nuevos datos.

¿Para qué sirven? La principal función de los trigger es contribuir a mejorar la gestión de la base de datos. Gracias a ellos muchas operaciones se pueden realizar de forma automática, sin necesidad de intervención humana, lo que permite ahorrar mucho tiempo. Otra de sus funciones es aumentar la seguridad e integridad de la información. Esto lo consiguen gracias a la programación de restricciones o requerimientos de verificación que permiten minimizar los errores y sincronizar la información.

¿Cuándo se puede usar un Trigger? Los trigger se puede ejecutar cuando el usuario realizar alguna acción relacionada con añadir, actualizar o eliminar información de una tabla. Es decir, al usar los comandos INSERT, UPDATE o DELETE.

```
delimiter //
CREATE TRIGGER nombre_trigger
{BEFORE|AFTER} {INSERT|UPDATE|DELETE}
ON nombre_tabla 
FOR EACH ROW
BEGIN
	-- Código SQL a ejecutar
END;
delimiter;
```