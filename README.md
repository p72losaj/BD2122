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

    El esquema de R es R(t1,t3,s3) y el grado es 3 (Solucion)

    El esquema de R es R(t1,t2,t3,s1,s2,s3) y el grado es 6

    El esquema de R es R(t1,t3,s1,s2,s3) y el grado es 5

    El esquema de R es R(t1,t3,s3) y el grado es 1

Escoger 2. Dada la consulta siguiente: SELECT * FROM clientes WHERE clt_num BETWEEN 1 AND 5; ¿Qué sentencia es equivalente a la anterior?

    SELECT * FROM clientes WHERE clt_num = 1 OR clt_num clt_num = 2 OR clt_num = 3 OR clt_num = 4 OR clt_num = 5;

    SELECT * FROM clientes WHERE clt_num IN (1,2,3,4,5);

    Todas las consultas son equivalentes a la del enunciado (Solucion)

    SELECT * FROM clientes WHERE clt_num >= 1 AND clt_num <= 5;

Escoger 3. ¿En qué orden se mostrarán las columnas al proyectar una tabla?

    En el mismo orden en el que indiquemos en la cláusula SELECT (Solucion)

    El orden de aparición de las columnas es aleatorio, no se puede controlar

    En el orden que indiquemos en la cláusula GROUP BY

    En el mismo orden en que las columnas fueron creadas en la base de datos

Escoger 4. Listado de clientes ordenado por apellidos de forma ascendente. Si hay clientes con el mismo apellido, éstos deberán ordenarse de manera ascendente por su nombre. Indique qué consulta resuelve el ejercicio

    SELECT * FROM clientes ORDER BY clt_apell ASC, clt_nom ASC; (Solucion)

    SELECT * FROM clientes ORDER BY clt_nom ASC, clt_apell ASC;

    SELECT * FROM clientes ORDER BYclt_apell ASC, IF (clt_apell = clt_apell) THEN ORDER BY clt_nom ASC;

    SELECT * FROM clientes ORDER BY clt_apell ASC AND clt-nom ASC;

Escoger 5. Se desea obtener un listado de clientes que no sean ni de Sevilla ni de Cadiz. ¿Cual es la consulta correcta?

    SELECT * FROM clientes WHERE clt_pob IN ('Sevilla', 'Cadiz');

    SELECT * FROM clientes WHERE clt_pob != 'Sevilla' OR clt_pob != 'Cadiz';

    SELECT * FROM clientes WHERE clt_pob NOT IN ('Sevilla', 'Cadiz'); (Solucion)

Escoger 6. Listado de poblaciones de las que hay algún cliente cuyo nombre empieza por A y no son de Jaen. El listado no deberá mostrar las poblaciones repetidas.

    SELECT clb_pob FROM clientes WHERE clt_pob <> 'Jaen' AND clt_nom LIKE 'A_';

    SELECT DISTINCT clt_pob FROM clientes WHERE clt_pob <> 'Jaen' AND clt_nom LIKE 'A%'; (Solucion)

    SELECT clb_pob FROM clientes WHERE clt_pob <> 'Jaen' AND clt_nom LIKE 'A%';

    SELECT DISTINCT clt_pob FROM clientes WHERE clt_pob <> 'Jaen' AND clt_nom LIKE 'A_';

Escoger 7. ¿Qué consulta utilizaré para mostrar clientes cuyo nombre empiece por J?

    SELECT * FROM clientes WHERE clt_nom = 'J%';

    SELECT * FROM clientes WHERE clt_nom LIKE 'J%'; (Solucion)

    SELECT * FROM clientes WHERE clt_nom = 'J_';

    SELECT * FROM clientes WHERE clt_nom LIKE 'J_';

Escoger 8. El empleo del operador IN equivale a ...

    Combinar operaciones con un Y logico

    Combinar operaciones con un O logico (Solucion)

    Combinar operaciones con un IS NULL

    Combinar operaciones con un EXISTS

Escoger 9. ¿Qué buena propiedad de la tecnología de bases de datos se asegura con la definición de la bases de datos a distintos niveles de abstracción (definición de esquemas)?

    La independencia de datos (Solucion)

    La integridad de los datos

    La eficiencia en la ejecución de transacciones de actualización

    La seguridad (privacidad) de los datos

Escoger 10. Indica cuál de estas afirmaciones es falsa: "El SGBD transfiere los bloques actualizados desde el buffer de memoria principal a disco porque ..."

    El SGBD necesita espacio en el buffer de datos para atender a otras operaciones de las transacciones"

    El SGBD tiene establecida una frecuencia para esa tarea"

    El administrador del SGBD lo ordena explicitamente"

    El usuario finaliza una transaccion de actualizacion con COMMIT" (solucion)

Escoger 11. Indica cual de estas afirmaciones es cierta: "Una transaccion puede pasar del estado de 'confirmada parcialmente' al estado de 'fallada' porque ...

    Alguna restriccion de integridad (en modo diferido) no se cumpla o porque alguna verificacion en el control de la concurrencia provoque que el SGBD anule la transaccion" (solucion)

    El usuario decida anular la transaccion"

    No se hayan salvado a la BD en disco todos los bloques actualizados"

    Alguna restriccion de integridad (en modo inmediato) no se cumpla"

Escoger 12. ¿Qué limitaciones, en la ejecución de transacciones, presenta un SGBD si sólo permite la comprobación de restricciones de integridad en modo inmediato?

    No se podrian realizar actualizaciones  de la BD (solucion)

    No presentaria ninguna limitacion

    La propiedad de consistencia no estaria asegurada

    Se podrian procesar algunas transacciones que condujesen a la BD a un estado inconsistente

Escoger 13. Considera un SGBD que soporta la comprobacion de restricciones en modo inmediato y diferido y una BD definida en el sistema con R1, ...,Rn restricciones de integridad (alguna con modo inicial diferido). En esa BD se va a ejecutar una transaccion T=<O1, ..., Om>. En la ejecucion, la operacion Oi viola la restriccion Rk (definida con modo inicial inmediato). ¿Cual de las siguientes afirmaciones es CIERTA?

    La operacion Oi se rechaza y prosigue el procesamiento del resto de operaciones de la transaccion (solucion)

    La transaccion T falla en el momento de la ejecucion de la ultima operacion (Om = COMMIT WORK)

    El sistema detiene la ejecucion de la transaccion en la operacion Oi

    No se pude ocurrir que en la ejecucion de la operacion Oi viole la restriccion Rk, ya que cuando hay restricciones con modo de comprobacion diferido, el sistema se espera al final de la transaccion para comprobar las restricciones

Escoger 14. ¿Es necesario el concepto de transaccion en un SGBD monousuario?

    Si, porque en el concepto de transaccion no siempre es posible actualizar la base de datos (solucion)

    No, porque en el caso monousario, la sesion del usuario puede ser considerada como una unica transaccion

    No, porque el aislamiento siempre esta configurado ya que no hay acceso concurrente a la base de datos

    Si, porque el concepto de transaccion la consistencia no esta asegurada

Escoger 15. ¿Donde se encuentra la informacion que necesita el SGBD para localizar la ubicacion en el disco de los datos solicitados por el usuario en una operacion de consulta realizada desde un programa-cliente?

    El SGBD no interviene en la localizacion de los datos, el programa-cliente utilizado por el usuario realiza esta tarea

    Esta informacion la envia, al SGBD, el usuario en su operacion

    En el esquema fisico de la BD (solucion)

    En el esquema externo de la BD utilizado por el usuario en su consulta

Escoger 16. ¿Es posible que los cambios de una transaccion confirmada definitivamente por el SGBD no esten grabados en la BD en disco? 

    No, porque el SGBD solo confirma una transaccion cuando se asegura de que los cambios de la transaccion han sido grabados en disco

    Si, porque puede haber un desajuste temporal entre la confirmacion por parte del SGBD y el momento en que los bloques actualizados por la transaccion son transferidos a disco (solucion)

    No, es contradictorio con el concepto de transaccion confirmada

    No, porque el SGBD transfiere los bloques actualizados por la transaccion inmediatamente despues de confirmarla definitivamente

Escoger 17. ¿Es posible que los cambios de una transaccion aun no confirmada por el usuario esten grabados en la BD en disco?

    No, porque los cambios realizados por una transaccion solo pueden grabarse en disco despues de la confirmacion del usuario

    No, porque los cambios realizados por una transaccion solo pueden grabarse en disco despues de la confirmacion del SGBD

    Si, porque puede haber un desajuste temporal entre la confirmacion por parte del SGBD y el momento en que los bloques actualizados por la transaccion son transferidos a disco (solucion)

    No, es contradictorio con el concepto de transaccion confirmada

Escoger 18. En un sistema de ficheros puede ocurrir:

    Duplicacion de datos

    Todo lo mencionado antes y/o despues (solucion)

    Inconsistencias de datos

    Dependencia de datos

Escoger 19. Una base de datos es:

    Una coleccion de datos, cuya estructura esta orientada a la aplicacion

    Una coleccion de datos interrelacionados que puede ser utilizado por multiples aplicaciones

    Un conjunto de datos almacenados con una estructura que refleje las interrelaciones del mundo real y que permita almacenar restricciones semanticas

    Un conjunto de datos almacenados con una estructura que refleje las interrelaciones del mundo real, que permita almacenar restricciones semanticas y que pueda ser utilizado por multiples aplicaciones (solucion)

Escoger 20. Los datos almacenados en una BD no pueden compartirse entre distintas aplicaciones

    Verdadero

    Falso (solucion)

Escoger 21. Los sistemas de BD jerarquicas se clasifican como:

    Relacionales

    PostRelacionales

    PreRelacionales (solucion)

    En red

Escoger 22. El catalogo del sistema es una BD creada por el sistema que:

    Evita almacenar informacion duplicada sobre el mismo hecho

    Almacena informacion sobre los datos almacenados (tablas, atributos, usuarios, ...) (solucion)

    Almacena la informacion para poder recuperar el sistema frente a fallos del medio

    Almacena la informacion sobre las transacciones abortadas por el sistema

Escoger 23. Las sentencias DDL (Data Definition Language) proporciona/n la/s siguiente/s funcionalidades en cuanto al acceso a la BD:

    Insertar y borrar datos en las tablas

    Recuperar datos almacenados en una tabla

    Crear restricciones y las estructuras de datos para almacenar informacion (solucion)

    Insertar, borrar datos en las tablas y Recuperar datos almacenados en una tabla

Escoger 24. Las sentencias DML (Data Manipulation Language) proporcionan las siguientes funcionalidades en cuanto al acceso a la BD:

    Recuperar datos y/o registros de la BD (solucion)

    Crear restricciones sobre las columnas de una tabla

    Insertar indices sobre atributos de la tabla

    Definir nuevos tipos de datos

Escoger 25. Una de las partes del sistema de gestion de BD es el modulo de optimizacion de consultas que se encarga de rectificar las consultas escritas y ejecutadas por un usuario de forma que toda consulta ejecutada en el sistema sea correcta

    Verdadero

    Falso (solucion)

Escoger 26. Los SGBD proporcionan lenguajes que se utilizan para la definicion y manipulacion de los datos almacenados en la BD

    Verdadero (solucion)

    Falso

Escoger 27. Los sistemas de ficheros se caracterizan por la facilidad a la hora de compartir informacion entre distintas aplicaciones

    Verdadero

    Falso (solucion)

Escoger 28. Una BD ayuda a mantener la integridad de los datos

    Verdadero (solucion)

    Falso

Escoger 29. Cualquier BD tiene un esquema conceptual y un esquema interno, pero puede tener varios esquemas externos

    Verdadero (solucion)

    Falso

Escoger 30. Dadas las entidades A y B y la relacion binaria R que asocia a estas dos entidades, la siguiente figura representa una posible ocurrencia del esquema representando las ocurrencias de las entidades con conjuntos de elementos y las ocurrencias de la relacion con una correspondencia entre dichos conjuntos

    La cardinalidad maximo B en la relacion es 1

    La cardinalidad minima y maxima de A en la relacion R es (1,1)

    La cardinalidad minima y maxima de B en la relacion R es (0,n) (solucion)

    La cardinalidad minima de A en la relacion es 0

Escoger 31. Las relaciones de grado 1 se llaman:

    Reflexiva (solucion)

    Monorelacional

    Binaria

    Ternaria

Escoger 32. En el siguiente diagrama Entidad-Relacion que representa una relacion reflexiva de R de cardinalidad 1:1, definida sobre la entidad A y con dos restricciones de existencia, ¿cual de estas ocurrencias es una ocurrencia validad del esquema?

    A = a1,a2, a3; R = (a1,a2), (a2,a3), (a3,a3)

    A = a1,a2,a3; R = (a1,a2), (a2,a3), (a3,a1) (solucion)

    A = a1,a2,a3; R = (a1,a3), (a2,a1)

    A = a1,a2,a3; R = (a1,a2), (a1,a3), (a3,a3)

Escoger 33. El modelo E-R permite representar:

    Solo permite representar las estructuras para representar la BD

    Ninguna es cierta

    Las estructuras que formaran la BD y las restricciones que limitan las ocurrencias validas de las mismas (solucion)

    Las estructuras que formaran la BD, las restricciones que limitan las ocurrencias validas de las mismas y las operaciones que se podran realizar sobre la BD

Escoger 34. Las entidades en el modelo E-R puede ser:

    Importantes y flojas

    Fuertes y debiles (solucion)

    Regulares y flojas

    Importantes y debiles

Escoger 35. Tanto las relaciones como las entidades pueden tener atributos

    Verdadero (solucion)

    Falso

Escoger 36. El modelo E-R es un modelo logico de datos propuesto por Peter P. Chen en 1976

    Verdadero

    Falso (solucion)

Escoger 37. Las entidades debiles se representan ...

    mediante un rombo doble en la relacion que la asocia con la entidad fuerte con la que tiene una dependencia de existencia

    mediante un rombo doble

    ninguna es cierta

    mediante un rectangulo doble. La relacion que la asocia a la entidad fuerte con la que tiene una dependencia de existencia se representa con un rombo doble (solucion)

Escoger 38. Las entidades debiles son entidades que ...

    No tienen una dependencia de existencia con respecto a ninguna otra entidad

    No se identifican a traves de su relacion con una entidad fuerte

    Tienen una dependencia de existencia con respecto a una entidad fuerte y ademas se identifica gracias a la relacion con esa entidad fuerte (solucion)

    Tienen una dependencia de existencia con respecto a una entidad fuerte

Escoger 39. El siguiente diagrama con especializacion: 

    Corresponde a una especializacion parcial y disjunta: todo animal debe pertenecer a uno de los subtipos y solo a uno

    Corresponde a una especializacion total y disjunta: todo animal debe pertenecer a uno de los subtipos y solo a uno (solucion)

    Corresponde a una especializacion parcial y solapada: algun animal puede no pertenecer a los subtipos, y alguno puede pertenecer a varios subtipos

    Corresponde a una especializacion total y solapada: todo animal debe pertenecer a uno de los subtipos y solo a uno

Escoger 40. Una relacion ternaria ...

    asocia exactamente a 3 entidades (solucion)

    asocia muchas entidades

    asocia cuatro entidades

    asocia a dos o mas entidades

Escoger 41. Para almacenar informacion de los proyectos finales de carrera leidos en el departamento se necesita una BD. Se desea almacenar la informacion de los Poyecto final de carrera leidos (titulo, tema, fecha de lectura, paginas), quien ha sido el director del proyecto y quien el proyectando. El diagrama E-R siguiente intenta representar esos hechos. Sabiendo que un proyectando solo puede realizar un proyecto final de carrera, pero que un mismo proyecto puede ser compartido entre varios alumnos y que un proyecto lo pueden dirigir varios tutores. Indica la respuesta correcta:

    La cardinalidad es Realiza(Tutor(1,1), Proyectos-Proyectando(1,1))

    La cardinalidad es Realiza (Proyectos(1,n), Tutor-Proyectando(0,1)) (solucion)

    La cardinalidad es Realiza (Proyectando(1,1), Proyectos-Tutor(1,n))

    La cardinalidad es Realiza(Tutor(1,1), Proyectos-Proyectando(1,1)) y Realiza (Proyectos(1,n), Tutor-Proyectando(0,1))

Escoger 42. Si la entidad A (supertipo) es una generalizacion de las entidades A1 y A2 (subtipos), entonces:

    toda ocurrencia de A es tambien una ocurrencia de A1 o una ocurrencia de A2

    toda ocurrencia de A1 y toda ocurrencia de A2 son tambien una ocurrencia de A (solucion)

    alguna ocurrencia de A es tambien una ocurrencia de A1 y A2

    la entidad de A esta compuesta por las entidades A1 y A2

Escoger 43. Las entidades y relaciones necesitan tener un atributo identificador

    Verdadero

    Falso (solucion)

Escoger 44. ¿Cual es la cardinalidad de una tabla con 1000 filas y 10 columnas?

    1000 (solucion)

    110

    100

    10

Escoger 45. La clave ajena

    puede tener valores sin concordancia

    puede aceptar nulos en ocasiones

    puede ser parte de la clave primaria de la relacion que la contiene

    en ocasiones puede aceptar nulos y puede formar parte de la clave primaria de la relacion que la contiene (solucion)

Escoger 46. ¿Cual de las siguientes claves en una tabla tienen la propiedad de unicidad?

    clave primaria

    clave alternativa

    clave ajena

    clave primaria y clave alternativa (solucion)

Escoger 47. Una tabla con 5000 filas y 6 columnas es:

    Grado 1006

    Grado 1000

    Grado 6 (solucion)

    Ninguna de las anteriores

Escoger 48. ¿De que aspectos se preocupa el modelo relacional de datos?

    Manipulacion de datos

    Estructura de los datos

    Integridad de los datos 

    Todas las opciones son correctas (solucion)

Escoger 49. La regla de integridad de las entidades indica que:

    La clave primaria debe aceptar nulos

    la clave primaria debe ser unica y minima

    la clave primaria debe ser unica

    la clave primaria no debe aceptar nulos (solucion)

Escoger 50. En la terminologia del modelo relacional, un atributo es lo mismo que una columna o un campo

    Verdadero (solucion)

    Falso

Escoger 51. Una tabla puede tener solo una clave primaria pero puede tener varias claves alternativas

    Verdadero (solucion)

    Falso

Escoger 52. Una tabla puede tener solo una clave candidata que puede ser compuesta

    Verdadero

    Falso (solucion)

Escoger 53. En el modelo relacional una tabla se le llama relacion

    Verdadero (solucion)

    Falso

Escoger 54. La clave ajena y la clave primaria se deben definir sobre el mismo dominio

    Verdadero (solucion)

    Falso

Escoger 55. NULL en BD relacionales representa la ausencia de valor

    Verdadero (solucion)

    Falso

Escoger 56. La operacion borrado en el modelo relacional se especifica:

    Utilizando la operacion diferencia entre conjuntos (solucion)

    Utilizando la operacion producto cartesiano

    Utilizando la operacion de union de conjuntos

    Utilizando la operacion de interseccion de conjuntos

Escoger 57. La operacion de Algebra Relacional Division entre 2 relaciones A y B:

    Devuelve una relacion de grado 1 y cardinalidad1, compuesta por las tuplas t1(AA)

    Devuelve una relacion de grado 1 y cardinalidad 2, compuesta por las tuplas t1(AA), t2(EE) (solucion)

    Devuelve una relacion de grado 2 y cardinalidad 2, formada por las tuplas t1(AA) y t2(BB)

    No devuelve ninguna tupla

Escoger 58. La operacion de agregacion "sum" (suma) se aplica a una columna numerica y devuelve ...

    Tantas tuplas como tuviera la tabla y una unica columna con el valor de la suma total en todas las columnas numericas existentes en la tabla

    ninguna es correcta

    una unica tupla con una sola columna que contiene el total de la suma en esa columna (solucion)

    tantas tuplas como tuviera la tabla y una unica columna con el valor de la suma total en esa columna

Escoger 59. La operacion de insercion en el modelo relacional se define utilizando ...

    la operacion union de conjuntos (solucion)

    la operacion de reunion

    la operacion de agregados

    la operacion de interseccion de conjuntos

Escoger 60. La operacion diferencia entre la relacion A y B devuelve las tuplas en A que no esten en B junto con las tuplas en B que no estan en A

    Verdadero

    Falso (solucion)

Escoger 61. Dos relaciones son compatibles con respecto a la operacion interseccion si tienen el mismo grado y cada atributo esta definido sobre el mismo dominio

    Verdadero (solucion)

    Falso

Escoger 62. Una reunion es equivalente a un producto cartesiano seguido de una restriccion

    verdadero (solucion)

    falso

Escoger 63. La metodologia de BD esta compuesta por 4 fases: analisis, diseño conceptual, diseño logico y diseño fisico

    verdadero

    falso (solucion)

Escoger 64. El siguiente diagrama entidad-relacion se proyecta en el modelo relacional:

    Dando lugar a una relacion A que contiene como atributos los propios de la entidad A mas el atributo b0 que es clave ajena en A (con referencia a la entidad B). Este atributo b0 no puede tomar el valor nulo

    Dado lugar a una relacion B que contiene como atributos los propios de B mas el atributo a0 que es clave ajena en B haciendo referencia a la entidad A. Este atributo a0 en B no puede tomar el valor nulo (solucion)

    Dando lugar a una relacion R formada por la clave primaria de A y la clave primaria de B (a0,b0) teniendo 2 restricciones de clave ajena, a0 con referencia a A y b0 con referencia a B. La clave primaria en R es compuesta (a0,b0)

    Ninguna es correcta

Escoger 65. Una relacion binaria con tipo de correspondencia 1:1 entre 2 entidades A y B, con cardinalidades (0,1) en ambas relaciones, se proyecta en el modelo relacional:

    Como dos relaciones A y B (cada una con sus propios atributos), y la clave primaria de una de las relaciones se propaga a la otra relacion como clave ajena

    En este caso las dos entidades dan lugar a una unica relacion que incluye toda la informacion de las dos entidades

    Como dos relaciones A y B (cada una con sus propios atributos), y la clave primaria de una de las relaciones se propaga a la otra relacion como clave ajena. Tambien se puede optar por crear un relacion extra, si se preveen muchos valores nulos (solucion)

    en este caso la entidad B esta obligada a relacionarse con la entidad A a traves de la relacion R, mediante la propagacion de la clave de A en B como clave ajena y con restriccion de valor no nulo en esa clave ajena

Escoger 66. Una entidad debil se proyecta igual que una entidad fuerte, con la pecularidad que su clave primaria es compuesta por un atributo propia y por la clave primaria de la entidad con respecto a la que es debil

    verdadero (solucion)

    falso

Escoger 67. La generalizacion y herencia en el modelo E-R se proyectan en el modelo logico relacional:

    integrar todas las entidades en una tabla, incluyendo en ella los atributos del supertipo y de los subtipos, incluyendo el atributo discriminativo

    todas las opciones son validas (solucion)

    creando solo tablas para los subtipos, añadiendo a cada una de ellas los atributos pertenecientes al supertipo

    creando una tabla para el supertipo, y tantas tablas como subtipos existan. Esta es la mejor opcion desde el punto de vista semantico

Escoger 68. En el siguiente diagrama E-R se proyecta en el modelo relacional como dos relaciones A y B con sus atributos propios, y la relacion R se representa como una clave ajena en la relacion con cardinalidad maxima 1 y restriccion de unicidad

    verdadero

    falso (solucion)

Escoger 69. Una relacion N:M se proyecta mediante el fenomeno de propagacion de clave primaria, sin necesidad de crear una tabla adicional

    Verdadero

    Falso (solucion)

Escoger 70. Para modificar la estructura de una tabla, se utiliza la secuencia de SQL:

    MODIFY TABLE nombreTabla;

    UPDATE nombreTabla;

    ALTER TABLE nombreTabla; (solucion)

    DROP TABLE nombreTabla;

Escoger 71. Cuando se crea una tabla con la secuencia CREATE TABLE:

    Siempre se debe crear con todas sus columnas y restricciones

    Se puede crear dando un nombre y un conjunto de columnas con tipo. Las restricciones se pueden crear después utilizando la sentencia CREATE CONSTRAINT

    Se puede crear dando un nombre y un conjunto de columnas con tipo. Las restricciones se pueden crear despues utilizando la secuencia UPDATE TABLE

    Se puede crear dando un nombre y un conjunto de columnas con tipo. Las restricciones se pueden crear despues utilizando la sentencia ALTER TABLE (solucion)

Escoger 72. ¿Que se evita con la siguiente sentencia SQL: CREATE TABLE ejemplo (id_articulo, nombre, fecha_compra, CONSTRAINT pk_ejemplo PRIMARY KEY (id_articulo), CONSTRAINT ck_ejemplo_fecha_compra CHECK (fecha_compra > = '01-09-2018'));

    Introducir datos de fecha posteriores o iguales al 1 de Septiembre del 2018

    Introducir tuplas con el mismo valor de fecha

    Introducir datos que tengan un valor de fecha anterior al 1 de Septiembre del 2018 (solucion)

    Introducir tuplas con valor de fecha igual al valor NULL

Escoger 73. La sentencia SQL: CREATE TABLE ejemplo (id_ejemplo NUMBER, nombre VARCHAR2(20), fecha DATE, CONSTRAINT pk_ejemplo PRIMARY KEY id_ejemplo, CONSTRAINT fk_nombre_ejemplo FOREIGN KEY (nombre) REFERENCES otroejemplo);

    Ninguna es cierta

    Crea una tabla llamada ejemplo, con 2 columnas y 3 restricciones basicas

    Crea una tabla llamada otroejemplo, con 3 columnas y 1 sola restriccion de tipo clave ajena sobre el atributo nombre

    Crea una tabla llamada ejemplo, con 3 columnas y 2 restricciones: una de tipo clave ajena y otra de tipo clave primaria (solucion)

Escoger 74. En SQL se pueden crear indices sobre atributos de tabla:

    en la misma sentencia CREATE TABLE, cuando se crea la tabla unicamente

    con la sentencia CREATE INDEX, indicando el nombre de la tabla donde se crea el indice

    con la sentencia CREATE INDEX, indicando el nombre de la tabla y atributo sobre el que se crea el indice (solucion)

    en la misma sentencia CREATE TABLE o con la sentencia ALTER TABLE, despues de la creacion

Escoger 75. SQL permite imponer las siguientes restricciones sobre atributos de tabla:

    solamente las restricciones de clave primaria y clave ajena

    las restricciones de clave primaria, clave ajena, unicidad y valores no nulos

    las restricciones de clave primaria, clave ajena y unicidad

    las restricciones de clave primaria, clave ajena, unicidad, valores no nulos y tipo CHECK (solucion)

Escoger 76. La sentencia DELETE FROM de SQL es una sentencia DDL

    Verdadero

    Falso (solucion)

Escoger 77. La sentencia ALTER TABLE permite añadir tanto columnas nuevas a una tabla como restricciones. Tambien permite eliminar restricciones y borrar columnas

    Verdadero (solucion)

    Falso

Escoger 78. La sentencia CREATE TABLE de SQL es una sentencia DDL

    Verdadero (solucion)

    Falso

Escoger 79. La siguiente consulta sobre la tabla

    Devuelve una tabla vacia, puesto que no existen tuplas que cumplan la condicion (solucion)

    Devuelve una tabla con 2 filas, las del idpedido = 1

    ninguna de las respuestas es correcta

    devuelve el pedido que contiene leche y yogur, es decir el pedido con idpedido igual a 1

Escoger 80. La siguiente consulta SQL que obtiene el nombre y el telefono de los clientes que han realizado visitas a inmuebles, junto con el numero de visitas realizadas:

    Incorrecta porque deberia agrupar asi: group by nombre, telefono (solucion)

    correcta, se ejecuta sin problemas

    incorrecta porque no se puede aplicar la funcion count sin indicar el nombre de la columna (atributo). Se deberia escribir count(idvisita)

    correcta y el resultado contiene tantas filas como clientes distintos hayan realizado visitas

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