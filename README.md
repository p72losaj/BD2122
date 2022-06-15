# BD2122
REPOSITORIO DE BASES DE DATOS 2021-2022

ENLACE CUESTIONARIO:

# PREGUNTAS DEL CUESTIONARIO

1. Cuestiones de unir flechas

Flechas 1. Una adecuadamente cada ventaja de las BDs con su explicacion:

    Independencia de la representacion de la informacion respecto a las aplicaciones que la utilizan -> Independencia de los datos

    Evita el almacenamiento multiple de una misma informacion para uso de distintas aplicaciones, o en distintos departamentos con propositos diferentes -> Reduccion de la redundancia

    Permite garantizar la seguridad de la informacion, controlando el acceso y la manipulacion de la informacion por las distintas aplicaciones y usuarios -> Garantizar la seguridad

    Impide que exista informacion discrepante sobre un mismo y unico hecho -> Evitar inconsistencias

    Permite utilizar los mismos datos entre distintos usuarios y aplicaciones, gestionando el acceso concurrente de todas ellas a la informacion -> Compartir datos

Flechas 2. Relaciona cada modulo del SGBD con la tarea realizada:

    Garantiza que solamente usuarios autorizados puedan manipular la BD -> Modulo de seguridad

    Asegura que la BD este en un estado consistente a pesar de que se produzcan fallos en el sistema -> Modulo de recuperacion del sistema

    Garantiza la consistencia de la BD durante la ejecucion concurrente de transacciones -> Modulo de control de concurrencia

    Evaluar y optimizar sentencias SQL -> Procesador y optimizador de consultas

Flechas 3. Relaciona cada elemento del modelo E-R con su definicion:

    Cada ocurrencia de una entidad se identifica por su relacion con una ocurrencia de otra entidad con la que tiene una dependencia de existencia -> Entidad debil

    Cuando una relacion asocia ocurrencias de 3 entidades (iguales o distintas) -> Relacion ternaria

    Cada ocurrencia de una entidad solo puede participar a una relacion de las señaladas -> Relaciones exclusivas

Flechas 4. Relaciona cada elemento con su representacion en el diagrama E-R:

    Conexiones entre los objetos de la BD -> Relaciones: Rombos etiquetados

    Aquel objeto (real o abstracto) acerca del cual queremos almacenar informacion en la BD -> Entidad: Rectangulo nominal

    Representan las propiedades de los objetos en la BD y las propiedades de sus asociaciones entre ellos -> Atributos: Elipses con nombre en su interior

Flechas 5. Relaciona cada operacion de Algebra Relacional:

    Restriccion, proyeccion, reunion y division -> Operadores relacionales propiamente

    Union, interseccion, diferencia, producto cartesiano -> Operadores de conjuntos

    Restriccion, proyeccion, reunion, producto cartesiano y division -> No es un grupo correcto

    Restriccion, union, division y proyeccion -> No es un grupo correcto

Flechas 6. Relaciona cada operacion con el tipo:

    Proyeccion -> Unaria

    Reunion -> Binaria

    Restriccion -> Unaria

    Division -> Binaria

    Diferencia -> Binaria

    Interseccion -> Binaria

Flechas 7. Relaciona cada nombre de etapa de diseño con lo que implica:

Flechas 8. Une cada sentencia con lo que realiza

2. Cuestiones de eleccion multiple

Chequear 1. La persistencia de datos se soporta con

    almacenamiento primario

    almacenamiento secundario (Solucion)

    almacenamiento fuera de linea (Solucion)

Chequear 2. Los problemas detectados en los sistemas de ficheros antes de la llegada de las tecnicas de bases de datos se pueden resumir en

Chequear 3. Segun este esquema E-R

Chequear 4. Segun este esquema E-R

Chequear 5. Hablando del almacenamiento persistente de datos en computacion, por seguridad endentemos

Chequear 6. De cuarta forma normal y quinta forma normal

Chequear 7. El proposito de los modelos de datos es

Chequear 8. El direccionamiento dentro de un disco duro incluye

Chequear 9. En cuanto a los esquemas resultado de las distintas fases de desarrollo de software

Chequear 10. En E-R, la generalizacion

Chequear 11. Antes de la llegada de la tecnologica basada en BD, la definicion del fichero estaba incluida en el codigo de los programas por lo que un cambio de un dato en todos los programas que usan ese fichero obligan a

Chequear 12. El lenguaje de definicion de datos

Chequear 13. SELECT T1.a, T2.b FROM T1, T2 WHERE t1.b=T2.b, en algebra relacional, incluye

Chequear 14. La persistencia se relaciona con

Chequear 15. El esquema es

Chequear 16. En las operaciones con datos en almacenamiento secundario

Chequear 17. Una generalizacion parcial y solapada

Chequear 18. En E-R, la generalizacion

Chequear 19. SELECT T1.* FROM T1,T2 WHERE T1.a=T2.a AND T1.b=T2.b, en algebra relacional, podria resolverse (solo, o combinando el operador con otros)

Chequear 20. En SQL, definicion de datos es

Chequear 21. La concatenacion natural del algebra relacional

Chequear 22. Disco magnetico es

Chequear 23. Una tabla que no este en FN4

Chequear 24. El entidad-relacion

Chequear 25. La FNBC en una relacion R1

Chequear 26. Cuando hablamos de restricciones en un esquema relacional, estamos hablando de

3. Cuestiones de eleccion unica

Escoger 1. Dadas las relaciones T(t1,t2,t3) y S(s1,s2,s3), indica el esquema y grado de la relación R: R1 = T(t1>5 and t2=4); R2=R1[t1,t3]; R=R2[t1*s1,t3*s2] 

Escoger 2. Dada la consulta siguiente: SELECT * FROM clientes WHERE clt_num BETWEEN 1 AND 5; ¿Qué sentencia es equivalente a la anterior?

Escoger 3. ¿En qué orden se mostrarán las columnas al proyectar una tabla?

Escoger 4. Listado de clientes ordenado por apellidos de forma ascendente. Si hay clientes con el mismo apellido, éstos deberán ordenarse de manera ascendente por su nombre. Indique qué consulta resuelve el ejercicio

Escoger 5. Se desea obtener un listado de clientes que no sean ni de Sevilla ni de Cadiz. ¿Cual es la consulta correcta?

Escoger 6. Listado de poblaciones de las que hay algún cliente cuyo nombre empieza por A y no son de Jaen. El listado no deberá mostrar las poblaciones repetidas.

Escoger 7. ¿Qué consulta utilizaré para mostrar clientes cuyo nombre empiece por J?

Escoger 8. El empleo del operador IN equivale a ...

Escoger 9. ¿Qué buena propiedad de la tecnología de bases de datos se asegura con la definición de la bases de datos a distintos niveles de abstracción (definición de esquemas)?

Escoger 10. Indica cuál de estas afirmaciones es falsa: "El SGBD transfiere los bloques actualizados desde el buffer de memoria principal a disco porque ..."

Escoger 11. Indica cual de estas afirmaciones es cierta: "Una transaccion puede pasar del estado de 'confirmada parcialmente' al estado de 'fallada' porque ...

Escoger 12. ¿Qué limitaciones, en la ejecución de transacciones, presenta un SGBD si sólo permite la comprobación de restricciones de integridad en modo inmediato?

Escoger 13. Considera un SGBD que soporta la comprobacion de restricciones en modo inmediato y diferido y una BD definida en el sistema con R1, ...,Rn restricciones de integridad (alguna con modo inicial diferido). En esa BD se va a ejecutar una transaccion T=<O1, ..., Om>. En la ejecucion, la operacion Oi viola la restriccion Rk (definida con modo inicial inmediato). ¿Cual de las siguientes afirmaciones es CIERTA?

Escoger 14. ¿Es necesario el concepto de transaccion en un SGBD monousuario?

Escoger 15. ¿Donde se encuentra la informacion que necesita el SGBD para localizar la ubicacion en el disco de los datos solicitados por el usuario en una operacion de consulta realizada desde un programa-cliente?

Escoger 16. ¿Es posible que los cambios de una transaccion confirmada definitivamente por el SGBD no esten grabados en la BD en disco? 

Escoger 17. ¿Es posible que los cambios de una transaccion aun no confirmada por el usuario esten grabados en la BD en disco?

Escoger 18. En un sistema de ficheros puede ocurrir:

Escoger 19. Una base de datos es:

Escoger 20. Los datos almacenados en una BD no pueden compartirse entre distintas aplicaciones

Escoger 21. Los sistemas de BD jerarquicas se clasifican como:

Escoger 22. El catalogo del sistema es una BD creada por el sistema que:

Escoger 23. Las sentencias DDL (Data Definition Language) proporciona/n la/s siguiente/s funcionalidades en cuanto al acceso a la BD:

Escoger 24. Las sentencias DML (Data Manipulation Language) proporcionan las siguientes funcionalidades en cuanto al acceso a la BD:

Escoger 25. Una de las partes del sistema de gestion de BD es el modulo de optimizacion de consultas que se encarga de rectificar las consultas escritas y ejecutadas por un usuario de forma que toda consulta ejecutada en el sistema sea correcta

Escoger 26. Los SGBD proporcionan lenguajes que se utilizan para la definicion y manipulacion de los datos almacenados en la BD

Escoger 27. Los sistemas de ficheros se caracterizan por la facilidad a la hora de compartir informacion entre distintas aplicaciones

Escoger 28. Una BD ayuda a mantener la integridad de los datos

Escoger 29. Cualquier BD tiene un esquema conceptual y un esquema interno, pero puede tener varios esquemas externos

Escoger 30. Dadas las entidades A y B y la relacion binaria R que asocia a estas dos entidades, la siguiente figura representa una posible ocurrencia del esquema representando las ocurrencias de las entidades con conjuntos de elementos y las ocurrencias de la relacion con una correspondencia entre dichos conjuntos

Escoger 31. Las relaciones de grado 1 se llaman:

Escoger 32. En el siguiente diagrama Entidad-Relacion que representa una relacion reflexiva de R de cardinalidad 1:1, definida sobre la entidad A y con dos restricciones de existencia, ¿cual de estas ocurrencias es una ocurrencia validad del esquema?

Escoger 33. El modelo E-R permite representar:

Escoger 34. Las entidades en el modelo E-R puede ser:

Escoger 35. Tanto las relaciones como las entidades pueden tener atributos

Escoger 36. El modelo E-R es un modelo logico de datos propuesto por Peter P. Chen en 1976

Escoger 37. Las entidades debiles se representan ...

Escoger 38. Las entidades debiles son entidades que ...

Escoger 39. El siguiente diagrama con especializacion: 

Escoger 40. Una relacion ternaria ...

Escoger 41. Para almacenar informacion de los proyectos finales de carrera leidos en el departamento se necesita una BD. Se desea almacenar la informacion de los Poyecto final de carrera leidos (titulo, tema, fecha de lectura, paginas), quien ha sido el director del proyecto y quien el proyectando. El diagrama E-R siguiente intenta representar esos hechos. Sabiendo que un proyectando solo puede realizar un proyecto final de carrera, pero que un mismo proyecto puede ser compartido entre varios alumnos y que un proyecto lo pueden dirigir varios tutores. Indica la respuesta correcta:

Escoger 42. Si la entidad A (supertipo) es una generalizacion de las entidades A1 y A2 (subtipos), entonces:

Escoger 43. Las entidades y relaciones necesitan tener un atributo identificador

Escoger 44. ¿Cual es la cardinalidad de una tabla con 1000 filas y 10 columnas?

Escoger 45. La clave ajena

Escoger 46. ¿Cual de las siguientes claves en una tabla tienen la propiedad de unicidad?

Escoger 47. Una tabla con 5000 filas y 6 columnas es:

Escoger 48. ¿De que aspectos se preocupa el modelo relacional de datos?

Escoger 49. La regla de integridad de las entidades indica que:

Escoger 50. En la terminologia del modelo relacional, un atributo es lo mismo que una columna o un campo

Escoger 51. Una tabla puede tener solo una clave primaria pero puede tener varias claves alternativas

Escoger 52. Una tabla puede tener solo una clave candidata que puede ser compuesta

Escoger 53. En el modelo relacional una tabla se le llama relacion

Escoger 54. La clave ajena y la clave primaria se deben definir sobre el mismo dominio

Escoger 55. NULL en BD relacionales representa la ausencia de valor

Escoger 56. La operacion borrado en el modelo relacional se especifica:

Escoger 57. La operacion de Algebra Relacional Division entre 2 relaciones A y B:

Escoger 58. La operacion de agregacion "sum" (suma) se aplica a una columna numerica y devuelve ...

Escoger 59. La operacion de insercion en el modelo relacional se define utilizando ...

Escoger 60. La operacion diferencia entre la relacion A y B devuelve las tuplas en A que no esten en B junto con las tuplas en B que no estan en A

Escoger 61. Dos relaciones son compatibles con respecto a la operacion interseccion si tienen el mismo grado y cada atributo esta definido sobre el mismo dominio

Escoger 62. Una reunion es equivalente a un producto cartesiano seguido de una restriccion

Escoger 63. La metodologia de BD esta compuesta por 4 fases: analisis, diseño conceptual, diseño logico y diseño fisico

Escoger 64. El siguiente diagrama entidad-relacion se proyecta en el modelo relacional:

Escoger 65. Una relacion binaria con tipo de correspondencia 1:1 entre 2 entidades A y B, con cardinalidades (0,1) en ambas relaciones, se proyecta en el modelo relacional:

Escoger 66. Una entidad debil se proyecta igual que una entidad fuerte, con la pecularidad que su clave primaria es compuesta por un atributo propia y por la clave primaria de la entidad con respecto a la que es debil

Escoger 67. La generalizacion y herencia en el modelo E-R se proyectan en el modelo logico relacional:

Escoger 68. En el siguiente diagrama E-R se proyecta en el modelo relacional como dos relaciones A y B con sus atributos propios, y la relacion R se representa como una clave ajena en la relacion con cardinalidad maxima 1 y restriccion de unicidad

Escoger 69. Una relacion N:M se proyecta mediante el fenomeno de propagacion de clave primaria, sin necesidad de crear una tabla adicional

Escoger 70. Para modificar la estructura de una tabla, se utiliza la secuencia de SQL:

Escoger 71. Cuando se crea una tabla con la secuencia CREATE TABLE:

Escoger 72. ¿Que se evita con la siguiente sentencia SQL: CREATE TABLE ejemplo (id_articulo, nombre, fecha_compra, CONSTRAINT pk_ejemplo PRIMARY KEY (id_articulo), CONSTRAINT ck_ejemplo_fecha_compra CHECK (fecha_compra > = '01-09-2018'));

Escoger 73. La sentencia SQL: CREATE TABLE ejemplo (id_ejemplo NUMBER, nombre VARCHAR2(20), fecha DATE, CONSTRAINT pk_ejemplo PRIMARY KEY id_ejemplo, CONSTRAINT fk_nombre_ejemplo FOREIGN KEY (nombre) REFERENCES otroejemplo);

Escoger 74. En SQL se pueden crear indices sobre atributos de tabla:

Escoger 75. SQL permite imponer las siguientes restricciones sobre atributos de tabla:

Escoger 76. La sentencia DELETE FROM de SQL es una sentencia DDL

Escoger 77. La sentencia ALTER TABLE permite añadir tanto columnas nuevas a una tabla como restricciones. Tambien permite eliminar restricciones y borrar columnas

Escoger 78. La sentencia CREATE TABLE de SQL es una sentencia DDL

Escoger 79. La siguiente consulta sobre la tabla

Escoger 80. La siguiente consulta SQL que obtiene el nombre y el telefono de los clientes que han realizado visitas a inmuebles, junto con el numero de visitas realizadas:

Escoger 81. Las siguientes consultas sobre la tabla

Escoger 82. Las funciones de agregados (promedio, suma, cuenta, maximo, minimo) cuando no se especifican grupos con la clausula GROUP BY, y se aplican a una tabla, se obtiene como resultado una tabla de cardinalidad 1, que contiene el valor de las funciones aplicadas sobre todas las tuplas de la tabla

Escoger 83. En SQL, se utiliza la clausula GROUP BY cuando se desea ordenar por la caracteristica de un grupo

Escoger 84. En SQL, la siguiente condicion cadena LIKE ('_OLA MUND_') devolveria TRUE para el valor de cadena = 'KOLA MUNDOS'

Escoger 85. En SQL, como en algebra relacional, existe el operador division

Escoger 86. En SQL existen los operadores de conjunto UNION, INTERSECCION, pero no existe el operador DIFERENCIA

Escoger 87. Dada la siguiente consulta: SELECT * FROM envios E1 WHERE E1.cantidad > (SELECT MIN(CANTIDAD) FROM envios E2 WHERE E2.s# = 'S2'); sobre la tabla envios

Escoger 88. La siguiente consulta sobre la tabla envios siguiente:

Escoger 89. La siguiente consulta sobre la tabla envios:

Escoger 90. Los operadores IN, ANY e IN son operadores de conjunto

Escoger 91. La siguiente cosulta sobre la tabla envios y obras

Escoger 92. Dada la consulta siguiente: SELECT * FROM ENVIOS E1 WHERE E1.CANTIDAD < (SELECT E2.CANTIDAD FROM ENVIOS E2 WHERE E2.S# = 'S3');

Escoger 93. La tecnologia magnetica aplicada al almacenamiento masivo de datos se aplica a

Escoger 94. La ordenacion secuencial ordenada

Escoger 95. Un indice denso

Escoger 96. Un modelo de datos es

Escoger 97. SELECT T1.a, T1.b, T2.c FROM T1,T2 WHERE T1.b = T2.b, en algebra relacional, podria ser:

Escoger 98. Una consulta en algebra relacional que sea parecida a "dame todos los vendendores de la provincia de Alicante"

Escoger 99. Un defecto de normalizacion en una BD relacional puede provocar anomalias

Escoger 100. Si en una tabla no hay dependencias funcionales entre sus atributos

Escoger 101. La normalizacion

Escoger 102. De la arquitectura cliente-servidor

Escoger 103. El trabajar con un SGBD que siga el Modelo Relacional fielmente nos garantiza

Escoger 104. Si como producto de la adaptacion del concepto de relacion matematica al modelo relacional decimos que la relacion tiene intencion y la extension, la segunda se define como ...

Escoger 105. Una clave ajena en el modelo relacional

Escoger 106. Al hablar de claves en el Modelo Relacional

Escoger 107. En cuanto a las distintas notaciones del E-R

Escoger 108. Si una tabla tiene 4 columnas, la cantidad maxima posible de claves candidatas es

Escoger 109. Una generalizacion total y disjunta

Escoger 110. En realidad, el operador division del algebra relacional es una combinacion de

Escoger 111. La ordenacion secuencia pura

Escoger 112. La primera BD, segun algunos autores, fue

Escoger 113. La independencia logica en la arquitectura de 4 niveles de un SGBD se da entre

Escoger 114. El modelo relacional fue desarrollado teoricamente por

Escoger 115. La arquitectura cliente-servidor se basa en

Escoger 116. Para evitar redundancias en una BD relacional

Escoger 117. La integridad de clave, como restriccion del modelo relacional que afecta a las claves candidatas en un SGBD relacional

Escoger 118. La FNBC

Escoger 119. En el modelo relacional, una clave primaria puede ser al mismo tiempo

Escoger 120. Al efectuar un producto cartesiano de algebra relacional de una tabla por si misma

Escoger 121. Los sitemas de informacion

Escoger 122. La definicion de relaciones (tablas) en una BD relacional establece las propiedades (del sistema de informacion que representan)

Escoger 123. Las correspondencias entre clases Card(A, r) = (2,3)

Escoger 124. En cuanto a la cuarta y quinta forma normal

Escoger 125. Al decir que un SGBD vela por la integridad de los datos, nos referimos a que

Escoger 126. La organizacion indexada se basa en la idea de que

Escoger 127. Para un conjunto de atributos determinado, la integridad de clave consiste en

Escoger 128. La independencia fisica en la arquitectura de 4 niveles de un SGBD se da entre

Escoger 129. SELECT T1.* FROM T1,T2 WHERE T1.a=T2.a AND T1.b=T2.b, en algebra relacional, podria ser

Escoger 130. Una especificacion de correspondencia entre clases Card(T,x) = (1,N)

Escoger 131. Una clave candidata puede contener nulos

Escoger 132. En algebra relacional, el producto cartesiano entre 2 relaciones necesita

Escoger 133. Dentro de la arquitectura estandar de un sistema de gestion de bases de datos, los esquemas externos

Escoger 134. Los discos flexibles (diskette, floppy) son almacenamiento

Escoger 135. Un modelo de datos es

Escoger 136. De cuarta forma normal y quinta forma normal

Escoger 137. Si una relacion se define en funcion de sus atributos como R(a,b,c) y (a,b,c) es clave primaria,

Escoger 138. Con la llegada del modelo relacional

Escoger 139. La relacion matematica, antes de su adaptacion al modelo relacional

Escoger 140. La no duplicidad de tuplas en el modelo relacional se consigue mediante

Escoger 141. La organizacion aleatoria calculada (hash)

Escoger 142. La definicion de tablas en un SGBD relacional constituye

Escoger 143. Si una relacion se define en funcion de sus atributos como R(a,b,c) y (a,b) es clave primaria,

Escoger 144. Si todo valor de clave ajena ha de aparecer en la tabla que hace referencia, nos estamos refiriendo a

Escoger 145. LIBROS(titulo, autor, tipo, precio, editor); Titulo, autor, tipo -> precio, editor; Precio, editor -> tipo. Las claves candidatas son

Escoger 146. Las propiedades de cobertura de una generalizacion son

Escoger 147. Si R es una relacion compuesta por 3 atributos R(A,B,C), que las claves candidatas sean irreducibles significa que

Escoger 148. Supon las relaciones R(A,C) y S(B,C,D). Calcula la concatenacion natural de R y S. ¿Cual de las siguientes tuplas saldra como resultado? Asume que cada tupla tiene un esquema (A,C, B, D)

Escoger 149. Ventajas de la arquitectura cliente-servidor

Escoger 150. Una tabla en el modelo relacional

Escoger 151. LIBROS(titulo, autor, tipo, precio, editor); Titulo, autor, tipo -> precio, editor; Precio, editor -> tipo. La relacion esta en

Escoger 152. La FN2 persigue que

Escoger 153. La definicion de la relacion matematica por intencion, despues de su adaptacion al modelo relacional es equivalente a su

Escoger 154. Una restriccion de correspondencia entre clases de objetos de cardinalidad minima 3

Escoger 155. Los esquemas externos se pueden ver como

Escoger 156. Los registros de longitud fija

Escoger 157. El operador concatenacion natural del algebra relacional, para poderse ejecutar apropiadamente

Escoger 158. La organizacion aleatoria calculada (hash)

Escoger 159. R(A, B, C) y S(C,D). El semi-join de R y S, ¿que esquema obtendria?

Escoger 160. Por persistencia entendemos

Escoger 161. Un modelo de datos es

Escoger 162. En toda relacion se puede encontrar al menos una clave candidata ya que el conjunto de todos los atributos de una relacion siempre

Escoger 163. Dentro de la arquitectura estandar de un sistema de gestion de bases de datos, los esquemas externos

Escoger 164. Las bases de datos NoSQL

Escoger 165. Si todo valor de clave ajena ha de aparecer en la tabla a la que hace referencia, nos referimos a que

Escoger 166. Las dependencias funcionales se dan cuando cada valor de un atributo determina

Escoger 167. La FNBC en una relacion R

Escoger 168. En E-R, la agregacion

Escoger 169. Uno de los indicadores de la importancia del algebra dentro del modelo relacional es

Escoger 170. Las bases de datos NoSQL son adecuadas

Escoger 171. Cuando utilizamos tecnologia NoSQL para el almacenamiento y recuperacion de datos

Escoger 172. La tecnologia NoSQL nace, entre otras razones

Escoger 173. Las bases de datos NoSQL son mas rapidas que las relacionales:

Escoger 174. Si justo despues de crear una tabla ejecutamos un ROLLBACK

Escoger 175. ¿Cual es el proposito de la OLTP?

Escoger 176. En las bases de datos relacionales, una relacion consta de

Escoger 177. Si un usuario crea una vista sobre una o varias de sus propias tablas y las esta manipulando bajo una unica sesion, indique la respuesta correcta

Escoger 178. Indique la respuesta correcta respecto a la desconexion de una sesion en el gestor de base de datos de Oracle

Escoger 179. ¿Que es una base de datos centralizada?

Escoger 180. En la arquitectura a 3 niveles, ¿cual es la mas cercana a los usuarios?

Escoger 181. Indique la respuesta correcta respecto a la independencia de datos en la arquitectura de 3 niveles:

Escoger 182. Una relacion 1-N entre 2 entidades A y B, da lugar en el modelo relacional a

Escoger 183. Los metadatos son:

Escoger 184. ¿Cual es el principal objetivo del SGBD?

Escoger 185. Segun su modelo de datos

Escoger 186. Indique la respuesta correcta respecto al incumplimiento de las formas normales en un esquema de base de datos:

Escoger 187. El objetivo de la arquitectura en tres niveles Ansi/Sparc es:

Escoger 188. Segun la arquitectura en tres niveles ANSI/SPARC el nivel externo de una base de datos:

Escoger 189. ¿Que son las bases de datos distribuidas?

Escoger 190. ¿Que problema tenian los ficheros para que fueran necesarias las bases de datos?

Escoger 191. Definicion de base de datos:

Escoger 192. La variable :new