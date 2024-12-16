# pip install PyMySQL
# pip install pip

import pymysql

# Conexión a la base de datos
conexion = pymysql.connect(
    host="localhost",         # Cambiar por el host de tu base de datos
    user="root",        # Usuario de MySQL
    password="toor", # Contraseña de MySQL
    database="test"      # Nombre de la base de datos
)

try:
    # Crear un cursor para ejecutar las consultas
    cursor = conexion.cursor()

    # Escribir la consulta SQL
    consulta = "SELECT * FROM alumno"

    # Ejecutar la consulta
    cursor.execute(consulta)

    # Obtener los resultados
    resultados = cursor.fetchall()

    # Mostrar los resultados
    for fila in resultados:
        print(fila)

finally:
    # Cerrar la conexión
    cursor.close()
    conexion.close()
