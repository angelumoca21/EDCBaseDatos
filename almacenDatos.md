# Almacén de datos

## Esquemas de almacén de datos

Data warehouse es un sistema que agrega y combina información de diferentes fuentes en un almacén de datos único y centralizado. Data warehouse permite a una organización o empresa ejecutar análisis potentes en grandes volúmenes. Los data warehouses han sido parte de las soluciones de inteligencia empresarial durante más de tres décadas, pero han evolucionado significativamente en los últimos años. Tradicionalmente, un data warehouse tenía una implementación, a menudo en un mainframe central, y su funcionalidad se centraba en extraer datos de otras fuentes, limpiar y preparar la información, y cargar y mantener los documentos en una base de datos relacional.

- **Esquema estrella:** en el esquema de estrella, el centro de la estrella puede tener una tabla de hechos y varias tablas de dimensiones asociadas. El esquema en estrella es el tipo más simple de esquema de Data Warehouse. También se conoce como Star Join Schema y está optimizado para consultar grandes conjuntos de datos. 

Características del esquema estelar:
- Cada dimensión en un esquema de estrella se representa con la única tabla de una dimensión.
- La tabla de dimensiones debe contener el conjunto de atributos.
- La tabla de dimensiones se une a la tabla de hechos utilizando una clave foránea.
- Las tablas de dimensiones no están unidas entre sí.
- La tabla de hechos contendría clave y medida.

El esquema estrella es fácil de entender y proporciona un uso óptimo del disco. Las tablas de dimensiones no están normalizadas.

![diagramaEstrella](/EDCBaseDatos/imagenes/estrella.png)

- **Esquema copo de nieve:** un esquema de copo de nieve es una extensión de un esquema de estrella y agrega dimensiones adicionales. Las tablas de dimensiones están normalizadas, lo que divide los datos en tablas adicionales.

Características del esquema de copo de nieve:
- El principal beneficio del esquema de copo de nieve es que utiliza un espacio en disco más pequeño.
- Debido a múltiples tablas, el rendimiento de la consulta se reduce.
- El principal desafío que enfrentará al usar el esquema de copo de nieve es que necesita realizar más esfuerzos de mantenimiento debido a que hay más tablas de búsquedas.

![diagramaCopoNieve](/EDCBaseDatos/imagenes/copoNieve.png)

- **Esquema Galaxy**: Un esquema Galaxy contiene dos tablas de hechos que comparten tablas de dimensiones. También se llama Fact Constellation Schema. El esquema se ve como una colección de estrellas, de ahí el nombre Galaxy Schema.

![diagramaGalaxy](/EDCBaseDatos/imagenes/galaxy.png)