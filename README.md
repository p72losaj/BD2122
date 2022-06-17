# BD2122
REPOSITORIO DE BASES DE DATOS 2021-2022

ENLACE CUESTIONARIO:

# PREGUNTAS DEL CUESTIONARIO

1. Cuestiones de unir flechas

Flechas 1. Una adecuadamente cada ventaja de las bases de datos con su explicacion:

    Independencia de la representacion de la informacion respecto a las aplicaciones que la utilizan -> Independencia de los datos

    Evita el almacenamiento multiple de una misma informacion para uso de distintas aplicaciones, o en distintos departamentos con propositos diferentes -> Reduccion de la redundancia

    Permite garantizar la seguridad de la informacion, controlando el acceso y la manipulacion de la informacion por las distintas aplicaciones y usuarios -> Garantizar la seguridad

    Impide que exista informacion discrepante sobre un mismo y unico hecho -> Evitar inconsistencias

    Permite utilizar los mismos datos entre distintos usuarios y aplicaciones, gestionando el acceso concurrente de todas ellas a la informacion -> Compartir datos

Flechas 2. Relaciona cada modulo del SGBD con la tarea realizada:

    Garantiza que solamente usuarios autorizados puedan manipular la base de datos -> Modulo de seguridad

    Asegura que la base de datos este en un estado consistente a pesar de que se produzcan fallos en el sistema -> Modulo de recuperacion del sistema

    Garantiza la consistencia de la base de datos durante la ejecucion concurrente de transacciones -> Modulo de control de concurrencia

    Evaluar y optimizar sentencias SQL -> Procesador y optimizador de consultas

Flechas 3. Relaciona cada elemento del modelo E-R con su definicion:

    Cada ocurrencia de una entidad se identifica por su relacion con una ocurrencia de otra entidad con la que tiene una dependencia de existencia -> Entidad debil

    Cuando una relacion asocia ocurrencias de 3 entidades (iguales o distintas) -> Relacion ternaria

    Cada ocurrencia de una entidad solo puede participar a una relacion de las señaladas -> Relaciones exclusivas

Flechas 4. Relaciona cada elemento con su representacion en el diagrama E-R:

    Conexiones entre los objetos de la base de datos -> Relaciones: Rombos etiquetados

    Aquel objeto (real o abstracto) acerca del cual queremos almacenar informacion en la base de datos -> Entidad: Rectangulo nominal

    Representan las propiedades de los objetos en la base de datos y las propiedades de sus asociaciones entre ellos -> Atributos: Elipses con nombre en su interior

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

    Esta actividad tiene como objetivo, teniendo en cuenta la representacion de los datos, elegir las estructuras de almacenamiento e indices para mejorar el rendimiento -> diseño fisico

    esta actividad tiene como objetivo la traduccion del esquema conceptual en el modelo empleado por el SGBD dando lugar por una parte a un esquema logico y por otra a un conjunto de transacciones que expresan la estatica y la dinamica -> diseño logico

    esta actividad tiene como objetivo obtener una representacion de la realidad que capture las propiedades estaticas y dinamicas de la misma, necesarias para satisfacer los requisitos recogidos en la actividad previa -> diseño conceptual

    esta actividad tiene como objetivo descubir el conjunto de requisitos de informacion y de proceso, que la organizacion necesita -> analisis

    esta tarea consiste en la incorporacion del SI diseñado a la organizacion con la puesta en marcha de la base de datos y de las aplicaciones desarrolladas: test de funcionamiento y mantenimiento -> implantacion

Flechas 8. Une cada sentencia con lo que realiza

    UPDATE miTabla SET nombre='Juan Lopez'; -> Actualiza datos de la tabla miTabla

    DROP TABLE miTabla; -> Borra la estructura tabla miTabla

    CREATE TABLE miTabla (codigo NUMBER, nombre VARCHAR2(20), PRIMARY KEY (codigo)) -> Crea la tabla miTabla

    DELETE FROM miTabla; -> Borra los datos de la tabla miTabla

    INSERT INTO miTabla VALUES (5, 'Elena Lopez'); -> Inserta una fila en la tabla miTabla

2. Cuestiones de eleccion multiple

Chequear 1. La persistencia de datos se soporta con

    almacenamiento primario

    almacenamiento secundario (Solucion)

    almacenamiento fuera de linea (Solucion)

Chequear 2. Los problemas detectados en los sistemas de ficheros antes de la llegada de las tecnicas de bases de datos se pueden resumir en

    redundancia de datos (solucion)

    seguridad insuficiente (solucion)

    los programas dependen de los datos

    los programas dependen de los datos que no se usan (solucion)

Chequear 3. Segun este esquema E-R

    los usuarios solo pueden pedir N articulos, donde N es un valor indeterminado entre 0 y 1

    los usuarios pueden pedir todos los articulos existentes, si quieren (solucion)

    los usuarios siempre tienen email, dni, nombre y apellidos (solucion)

    todos los usuarios deben haber pedido algo

Chequear 4. Segun este esquema E-R

    los usuarios pueden tener varias localidades de residencia, la principal y la de veraneo, por ejemplo

    los usuarios se identifican por su dn

    los usuarios siempre viven en al menos una localidad (solucion)

    las localidades pueden no tener habitantes (solucion)

Chequear 5. Hablando del almacenamiento persistente de datos en computacion, por seguridad endentemos

    recuperacion ante desastres (solucion)

    dependencia de los programas de datos que no usan

    acceso simultaneo a los datos (solucion)

    autorizaciones (solucion)

Chequear 6. De cuarta forma normal y quinta forma normal

    solo en contadas ocasiones una tabla FN4 no se corresponde con una FN5 (solucion)

    su proceso de normalizacion no genera nuevas claves ajenas (solucion)

    en realidad, es mucho mas habitual encontrar tablas que no las cumplan que tablas que no cumplan la FN3

Chequear 7. El proposito de los modelos de datos es

    proporcionar las herramientas necesarias para modelar un sistema de informacion (solucion)

    permitir obtener un esquema como representacion de un sistema eliminando detalles irrelevantes (solucion)

    definir un lenguaje de programacion como C, PHP y Java

    introducir la definicion de los ficheros dentro del codigo del programa

Chequear 8. El direccionamiento dentro de un disco duro incluye

    cabezal (solucion)

    byte

    cilindro (solucion)

    sector (solucion)

Chequear 9. En cuanto a los esquemas resultado de las distintas fases de desarrollo de software

    el esquema conceptual no depende de una maquina y software concreta (solucion)

    el esquema fisico es lo mas cercano al disco duro, al mantenimiento de ficheros (solucion)

    el esquema conceptual se genera teniendo en cuenta que se va a trabajar en una base de datos

    ninguno depende de otro, el logico no depende del conceptual, el fisico no depende del conceptual, ...

Chequear 10. En E-R, la generalizacion

    se define siempre con propiedades de cobertura (solucion)

    si es parcial no es disjunta, y si es total no es solapada

    es una representacion de subtipos de una clase de objetos general (solucion)

    puede ser al mismo tiempo parcial,total, disjunta y solapada

Chequear 11. Antes de la llegada de la tecnologica basada en bases de datos, la definicion del fichero estaba incluida en el codigo de los programas por lo que un cambio de un dato en todos los programas que usan ese fichero obligan a

    reversionar

    reenlazar (solucion)

    recodificar (solucion)

    recompilar (solucion)

Chequear 12. El lenguaje de definicion de datos

    es parte de la definicion del modelo de datos (solucion)

    me permite construir un esquema de, por ejemplo, una base de datos relacional (solucion)

    tiene como algunos de sus cometidos principales permitirla insercion y modificacion de registros

    puede ser navegacional o de especificacion

Chequear 13. SELECT T1.a, T2.b FROM T1, T2 WHERE t1.b=T2.b, en algebra relacional, incluye

    la proyeccion (solucion)

    el producto cartesiano (solucion)

    la seleccion (solucion)

    la division

Chequear 14. La persistencia se relaciona con

    el almacenamiento cuaternario

    el almacenamiento secundario (solucion)

    el almacenamiento primario

    el almacenamiento terciario (solucion)

Chequear 15. El esquema es
    
    un lenguaje de programacion como C, PHP y Java

    una descripcion de un sistema concreto (solucion)

    el resultado de aplicar un determinado modelo de datos (solucion)

    una descripcion de ficheros

Chequear 16. En las operaciones con datos en almacenamiento secundario

    aunque se trabaje con un registro, el disco se procesa por bloques o paginas (solucion)

    MAC OS y Sun solo utilizan almacenamiento primario

    antes hay que transferir la informacion desde el almacenamiento secundario al primario (solucion)

    si quiero recuperar un unico byte, el sistema operativo no me proporciona herramienta alguna, tengo que especificar dentro del programa el cabezal, cilindro y sector del disco

Chequear 17. Una generalizacion parcial y solapada

    se puede representar en el modelo relacional (solucion)

    se puede representar en entidad-relacion (solucion)

    no existe, las generalizaciones solo pueden ser totales y disjuntas

Chequear 18. En E-R, la generalizacion

    representa una relacion de herencia, X es-un Y (solucion)

    diferencia subconjuntos logicos o subclases dentro de un tipo o clase concreta (solucion)

    no existe como tal, es una simulacion de lo que si se puede representar en el modelo relacional

Chequear 19. SELECT T1.* FROM T1,T2 WHERE T1.a=T2.a AND T1.b=T2.b, en algebra relacional, podria resolverse (solo, o combinando el operador con otros)

    la interseccion (solucion)

    la diferencia

    la concatenacion natural (solucion)

Chequear 20. En SQL, definicion de datos es

    alter table x (solucion)

    drop table x (solucion)

    insert into x (select)

Chequear 21. La concatenacion natural del algebra relacional

    siempre se puede expresar como una secuencia de producto cartesiano, seleccion y proyeccion (solucion)

    solo se puede utilizar si entre 2 tablas operando existe una clave ajena de una a otra

    no necesita que las relaciones sean compatibles (solucion)

Chequear 22. Disco magnetico es

    disco rigido (solucion)

    disco versatil digital

    disco flexible (solucion)

Chequear 23. Una tabla que no este en FN4

    tampoco esta en FNBC

    nunca saldra de la transformacion de un esquema E-R a relacional (solucion)

    facilita la posibilidad de introducir inconsistencias en la base de datos (solucion)

Chequear 24. El entidad-relacion

    es un lenguaje grafico (solucion)

    es un modelo de datos de proposito particular

    es un modelo de datos semantico (solucion)

Chequear 25. La FNBC en una relacion R1

    se cumple siempre si solo hay una clave candidata (solucion)

    se cumple cuando R esta en FN3 y tiene varias claves candidatas no solapadas (solucion)

    no hace falta tratarla si R esta ya en FN3 aunque no necesariamente en FN2

Chequear 26. Cuando hablamos de restricciones en un esquema relacional, estamos hablando de

    que, entre otros, la concatenacion natural debe hacerse con columnas que se llamen igual y tengan el mismo dominio

    como se relacionan las tablas entre si (solucion)

    que datos se pueden almacenar en el y cuales no (solucion)

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

    No se hayan salvado a la base de datos en disco todos los bloques actualizados"

    Alguna restriccion de integridad (en modo inmediato) no se cumpla"

Escoger 12. ¿Qué limitaciones, en la ejecución de transacciones, presenta un SGBD si sólo permite la comprobación de restricciones de integridad en modo inmediato?

    No se podrian realizar actualizaciones de la base de datos (solucion)

    No presentaria ninguna limitacion

    La propiedad de consistencia no estaria asegurada

    Se podrian procesar algunas transacciones que condujesen a la base de datos a un estado inconsistente

Escoger 13. Considera un SGBD que soporta la comprobacion de restricciones en modo inmediato y diferido y una base de datos definida en el sistema con R1, ...,Rn restricciones de integridad (alguna con modo inicial diferido). En esa base de datos se va a ejecutar una transaccion T=<O1, ..., Om>. En la ejecucion, la operacion Oi viola la restriccion Rk (definida con modo inicial inmediato). ¿Cual de las siguientes afirmaciones es CIERTA?

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

    En el esquema fisico de la base de datos (solucion)

    En el esquema externo de la base de datos utilizado por el usuario en su consulta

Escoger 16. ¿Es posible que los cambios de una transaccion confirmada definitivamente por el SGBD no esten grabados en la base de datos en disco? 

    No, porque el SGBD solo confirma una transaccion cuando se asegura de que los cambios de la transaccion han sido grabados en disco

    Si, porque puede haber un desajuste temporal entre la confirmacion por parte del SGBD y el momento en que los bloques actualizados por la transaccion son transferidos a disco (solucion)

    No, es contradictorio con el concepto de transaccion confirmada

    No, porque el SGBD transfiere los bloques actualizados por la transaccion inmediatamente despues de confirmarla definitivamente

Escoger 17. ¿Es posible que los cambios de una transaccion aun no confirmada por el usuario esten grabados en la base de datos en disco?

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

Escoger 20. Los datos almacenados en una base de datos no pueden compartirse entre distintas aplicaciones

    Verdadero

    Falso (solucion)

Escoger 21. Los sistemas de base de datos jerarquicas se clasifican como:

    Relacionales

    PostRelacionales

    PreRelacionales (solucion)

    En red

Escoger 22. El catalogo del sistema es una base de datos creada por el sistema que:

    Evita almacenar informacion duplicada sobre el mismo hecho

    Almacena informacion sobre los datos almacenados (tablas, atributos, usuarios, ...) (solucion)

    Almacena la informacion para poder recuperar el sistema frente a fallos del medio

    Almacena la informacion sobre las transacciones abortadas por el sistema

Escoger 23. Las sentencias DDL (Data Definition Language) proporciona/n la/s siguiente/s funcionalidades en cuanto al acceso a la base de datos:

    Insertar y borrar datos en las tablas

    Recuperar datos almacenados en una tabla

    Crear restricciones y las estructuras de datos para almacenar informacion (solucion)

    Insertar, borrar datos en las tablas y Recuperar datos almacenados en una tabla

Escoger 24. Las sentencias DML (Data Manipulation Language) proporcionan las siguientes funcionalidades en cuanto al acceso a la base de datos:

    Recuperar datos y/o registros de la base de datos (solucion)

    Crear restricciones sobre las columnas de una tabla

    Insertar indices sobre atributos de la tabla

    Definir nuevos tipos de datos

Escoger 25. Una de las partes del sistema de gestion de base de datos es el modulo de optimizacion de consultas que se encarga de rectificar las consultas escritas y ejecutadas por un usuario de forma que toda consulta ejecutada en el sistema sea correcta

    Verdadero

    Falso (solucion)

Escoger 26. Los SGBD proporcionan lenguajes que se utilizan para la definicion y manipulacion de los datos almacenados en la base de datos

    Verdadero (solucion)

    Falso

Escoger 27. Los sistemas de ficheros se caracterizan por la facilidad a la hora de compartir informacion entre distintas aplicaciones

    Verdadero

    Falso (solucion)

Escoger 28. Una base de datos ayuda a mantener la integridad de los datos

    Verdadero (solucion)

    Falso

Escoger 29. Cualquier base de datos tiene un esquema conceptual y un esquema interno, pero puede tener varios esquemas externos

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

    Solo permite representar las estructuras para representar la base de datos

    Ninguna es cierta

    Las estructuras que formaran la base de datos y las restricciones que limitan las ocurrencias validas de las mismas (solucion)

    Las estructuras que formaran la base de datos, las restricciones que limitan las ocurrencias validas de las mismas y las operaciones que se podran realizar sobre la base de datos

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

Escoger 41. Para almacenar informacion de los proyectos finales de carrera leidos en el departamento se necesita una base de datos. Se desea almacenar la informacion de los Poyecto final de carrera leidos (titulo, tema, fecha de lectura, paginas), quien ha sido el director del proyecto y quien el proyectando. El diagrama E-R siguiente intenta representar esos hechos. Sabiendo que un proyectando solo puede realizar un proyecto final de carrera, pero que un mismo proyecto puede ser compartido entre varios alumnos y que un proyecto lo pueden dirigir varios tutores. Indica la respuesta correcta:

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

Escoger 55. NULL en bases de datos relacionales representa la ausencia de valor

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

Escoger 63. La metodologia de base de datos esta compuesta por 4 fases: analisis, diseño conceptual, diseño logico y diseño fisico

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

    las dos consultas se comportan igual, devuelven 1 sola tupla en ambos casos

    la consulta b devuelve 2 tuplas, mientras que la a devuelve 1 sola tupla

    la consulta a devuelve una sola tupla, gracias a la clausula distinct que elimina duplicados
    
    devuelven lo mismo, puesto que en el resultado no hay repeticiones al contener la clave primaria el resultado (solucion)

Escoger 82. Las funciones de agregados (promedio, suma, cuenta, maximo, minimo) cuando no se especifican grupos con la clausula GROUP BY, y se aplican a una tabla, se obtiene como resultado una tabla de cardinalidad 1, que contiene el valor de las funciones aplicadas sobre todas las tuplas de la tabla

    Verdadero (solucion)

    Falso

Escoger 83. En SQL, se utiliza la clausula GROUP BY cuando se desea ordenar por la caracteristica de un grupo

    verdadero

    falso (solucion)

Escoger 84. En SQL, la siguiente condicion cadena LIKE ('_OLA MUND_') devolveria TRUE para el valor de cadena = 'KOLA MUNDOS'

    verdadero

    falso (solucion)

Escoger 85. En SQL, como en algebra relacional, existe el operador division

    verdadero

    falso (solucion)

Escoger 86. En SQL existen los operadores de conjunto UNION, INTERSECCION, pero no existe el operador DIFERENCIA

    verdadero

    falso (solucion)

Escoger 87. Dada la siguiente consulta: SELECT * FROM envios E1 WHERE E1.cantidad > (SELECT MIN(CANTIDAD) FROM envios E2 WHERE E2.s# = 'S2'); sobre la tabla envios

    la consulta tiene errores y no se ejecutaria con exito

    devuelve todos los envios cuya cantidad sea mayor que 15 (el 15 es el valor que se obtiene en la subconsulta)

    devuelve todos los envios cuya cantidad sea mayor que 12 (el 12 es el valor que se obtiene en la subconsulta) (solucion)

    la consulta no devuelve ninguna, puesto que las tuplas de envios no cumplen la condicion impuesta

Escoger 88. La siguiente consulta sobre la tabla envios siguiente:

    es equivalente a la consulta: SELECT * FROM envios WHERE cantidad=11 OR cantidad=15 OR cantidad=50; (solucion)

    devuelve las tuplas que cumplan que el atributo cantidad es mayor que 11, 15 y 150

    no devuelve ninguna tupla puesto que cantidad=11 no aparece en la tabla envios

    devuelve las tuplas que cumplan que el atributo cantidad es menor que 11, 15 y 150

Escoger 89. La siguiente consulta sobre la tabla envios:

    tiene un error sintactico puesto que ALL solo se puede utilizar con subconsultas

    devolveria lo mismo que la consulta: SELECT* FROM envios WHERE cantidad>=13;

    es equivalente a la consulta: SELECT * FROM envios WHERE cantidad <= ANY(13,15,55);

    devolveria lo mismo que la consulta: SELECT* FROM envios WHERE cantidad >= 55; (solucion)

Escoger 90. Los operadores IN, ANY e IN son operadores de conjunto

    verdadero (solucion)

    falso

Escoger 91. La siguiente cosulta sobre la tabla envios y obras

    funcionaria correctamente y devolveria 2 tuplas ('carretera', 'pantano')

    daria un error puesto que la subconsulta no devuelve ninguna tupla

    daria un error puesto que el DISTINCT no se puede utilizar en la consulta principal

    daria un error puesto que la subconsulta devuelve mas de una tupla (solucion)

Escoger 92. Dada la consulta siguiente: SELECT * FROM ENVIOS E1 WHERE E1.CANTIDAD < (SELECT E2.CANTIDAD FROM ENVIOS E2 WHERE E2.S# = 'S3');

    es correcta y seria equivalente a: SELECT * FROM envios E1 WHERE E1.cantidad < ANY(SELECT E2.cantidad FROM envios e2 WHERE E2.s# = 'S3');

    es correcta y seria equivalente a: SELECT * FROM envios E1 WHERE E1.cantidad < ALL(SELECT E2.cantidad FROM envios E2 WHERE E2.s# = 'S3');

    es correcta y devuelve todas las tuplas que tengan un valor del atributo cantidad < 16

    daria un error puesto que la subconsulta puede devolver varios valores, y se necesita por tanto un operador de conjuntos (IN, ANY, ALL) (solucion)

Escoger 93. La tecnologia magnetica aplicada al almacenamiento masivo de datos se aplica a

    salvo a las tarjetas perforadas, a todos

    discos duros y flexibles (solucion)

    CD, DVD y Blu Ray

    discos duros, discos flexibles y discos flash

Escoger 94. La ordenacion secuencial ordenada

    es la peor para obtener un listado ordenado por el campo clave

    es la mejor para obtener un listado ordenado por cualquier campo

    obliga a una reorganizacion fisica del fichero cada vez que quiero insertar un registro intermedio (solucion)

    optimiza el espacio

Escoger 95. Un indice denso

    es un indice con muchos datos

    requiere que el fichero de datos este ordenado por un campo clave (solucion)

    estructuran los registros en forma de arbol

    no pueden ser multinivel

Escoger 96. Un modelo de datos es

    todo aquello que se pueda consultar con la orden select

    una base de datos ejemplo para todas las demas 

    una teoria de especificacion describiendo como una base de datos se estructura y se usa (solucion)

    un esquema de bases de datos como, por ejemplo, el de TiendaOnLine

Escoger 97. SELECT T1.a, T1.b, T2.c FROM T1,T2 WHERE T1.b = T2.b, en algebra relacional, podria ser:

    la concantenacion natural (solucion)

    el producto cartesiano

    la union

    la division

Escoger 98. Una consulta en algebra relacional que sea parecida a "dame todos los vendendores de la provincia de Alicante"

    no se puede hacer porque precisa hacer la cuenta de filas que hay en la tabla, y en algebra relacional esta muy limitado para contar, ordenar, etc

    no necesita el operador DIVISION (solucion)

    necesita el operador DIVISION

Escoger 99. Un defecto de normalizacion en una base de datos relacional puede provocar anomalias

    al borrar la informacion de una tupla, ya que se pueden estar borrando tuplas de otras tablas involuntariamente

    al insertar informacion en una tabla, porque los datos insertados no se corresponderan con la realidad

    al modificar la informacion de una tabla, ya que un cambio simple de un dato podria afectar a varias tuplas (solucion)

Escoger 100. Si en una tabla no hay dependencias funcionales entre sus atributos

    habra tantas claves candidatas como columnas tenga la tabla

    esa tabla solo tiene una clave candidata (solucion)

    eso nunca ocurrira en modelo relacional: toda tabla tiene al menos una dependencia funcional

Escoger 101. La normalizacion

    se utiliza actualmente mas como un criterio de calidad en el diseño (solucion)

    no es necesaria aunque si recomendable

    es el mejor metodo para diseñar las bases de datos

Escoger 102. De la arquitectura cliente-servidor

    es una nueva arquitectura del SGBD basada en otros esquemas

    es un esquema mas de la arquitectura de un SGBD

    es una organizacion distribuida donde el SGBD, si lo hay, haria el papel de servidor (solucion)

Escoger 103. El trabajar con un SGBD que siga el Modelo Relacional fielmente nos garantiza

    que en las tablas no hay tuplas duplicadas (solucion)

    la posibilidad de utilizar columnas multivaluadas

    que no hay redundancia de informacion

Escoger 104. Si como producto de la adaptacion del concepto de relacion matematica al modelo relacional decimos que la relacion tiene intencion y la extension, la segunda se define como ...

    el conjunto de n-tuplas, donde cada tupla es un conjunto de pares (nombreAtributo: valor) (solucion)

    un conjuto de dominios no necesariamente disjuntos

    un conjunto de nombres de atributos distintos, cada uno de ellos asociado a su dominio correspondiente

Escoger 105. Una clave ajena en el modelo relacional

    indica una asociacion entre objetos (solucion)

    es un tipo de clave candidata

    nunca podra estar formada por todos los atributos de una relacion

Escoger 106. Al hablar de claves en el Modelo Relacional

    una clave candidata de una relacion siempre debe ser tambien clave ajena

    una clave ajena de una relacion R puede ser tambien la clave primaria de R (solucion)

    una clave ajena de una relacion R debe coincidir con el numero de columnas con el de la clave primaria de R

Escoger 107. En cuanto a las distintas notaciones del E-R

    no es cierto, solo hay una unica notacion

    unas sirven para el esquema conceptual, otras para el logico y otras para el fisico

    nos referimos al nombre que le daremos al esquema de base de datos

    nos da igual, podremos obtener un esquema equivalente en cada una de ellas (solucion)

Escoger 108. Si una tabla tiene 4 columnas, la cantidad maxima posible de claves candidatas es

    6 (solucion)

    4

    8

Escoger 109. Una generalizacion total y disjunta

    no existe, las generalizaciones solo pueden ser parciales y solapadas

    no se puede representar en ningun modelo de datos

    no se puede representar en el modelo relacional (solucion)

Escoger 110. En realidad, el operador division del algebra relacional es una combinacion de

    no es combinacion de nada, es una primitiva

    seleccion, producto cartesiano y proyeccion

    diferencias, producto cartesiano y proyecciones (solucion)

Escoger 111. La ordenacion secuencia pura

    es la mejor para añadir nuevos registros (solucion)

    es la mejor para obtener un listado ordenado por cualquier campo

    optimiza la busqueda de registros concretos

    obliga a una reorganizacion del fichero cada vez que quiero insertar un registro intermedio

Escoger 112. La primera base de datos, segun algunos autores, fue

    Entidad-Relacion, de Chen

    Oracle, de Codd y Date

    IDS (General Electric) a partir de los trabajos de Charles Bachman (solucion)

Escoger 113. La independencia logica en la arquitectura de 4 niveles de un SGBD se da entre

    el esquema logico y los esquemas externos (solucion)

    el esquema interno y los esquemas externos

    el esquema conceptual y el esquema logico

    el esquema logico y el esquema interno

Escoger 114. El modelo relacional fue desarrollado teoricamente por

    Chen

    Elmasri

    Codd (solucion)

Escoger 115. La arquitectura cliente-servidor se basa en

    la existencia de fragmentos de la base de datos geograficamente dispersos

    la existencia de procesos que solicitan informacion y otros que la extraen de las base de datos (solucion)

    la existencia de un grupo de usuarios que solicitan la informacion directamente al SGBD

Escoger 116. Para evitar redundancias en una base de datos relacional

    la politica adecuada para incrementar la integridad referencial es la de anular, aunque a veces es decision del diseñador emplear otra politica

    se aplica el proceso de normalizacion hasta obtener relaciones en FN3 (en la mayoria de los casos) (solucion)

    las claves ajenas deben tener prevista la politica adecuada ante operaciones de borrado

Escoger 117. La integridad de clave, como restriccion del modelo relacional que afecta a las claves candidatas en un SGBD relacional

    es la restriccion que garantiza la no duplicidad de tuplas (solucion)

    se cumple en general para las restricciones de valor de los atributos

    se cumple si toda clave es nulo o ningun atributo de la clave es nulo

Escoger 118. La FNBC

    se debe comprobar en tablas con una unica clave candidata

    se debe comprobar en tablas con dos o mas claves candidatas (solucion)

    es condicion necesaria para que una tabla este en FN3 cuando hay mas de una clave candidata

Escoger 119. En el modelo relacional, una clave primaria puede ser al mismo tiempo

    alternativa

    multivaluada

    clave ajena (solucion)

Escoger 120. Al efectuar un producto cartesiano de algebra relacional de una tabla por si misma

    provoca duplicados de tupla en la relacion resultado, que no se darian si el producto fuera entre 2 tablas diferentes

    las columnas de la tabla derivada no tienen nombre

    por definicion, nunca produce duplicados de tuplas (solucion)

Escoger 121. Los sitemas de informacion

    describen los datos conceptualmente

    tienen como principal funcion manejar volumenes de datos tanto estructurados como no estructurados (solucion)

    generan lenguajes de definicion y manipulacion de los datos

    son modelos de datos

Escoger 122. La definicion de relaciones (tablas) en una base de datos relacional establece las propiedades (del sistema de informacion que representan)

    de registros

    dinamicas

    estaticas (solucion)

Escoger 123. Las correspondencias entre clases Card(A, r) = (2,3)

    no se pueden dar en ningun modelo de datos

    obligan a que cada miembro de A se vincule con dos o tres miembros de otra clase de objetos (solucion)

    indican una generalizacion solapada en dos de sus tres especializaciones

Escoger 124. En cuanto a la cuarta y quinta forma normal

    si modelas en entidad-relacion, ninguna tabla que se defina a partir de ese esquema cumplira la FN4 ni la FN5

    se necesitan porque hay ciertas tablas optimas desde el punto de vista de las dependencias funcionales pero en las que aun se observa cierta redundancia (solucion)

    algunos autores cifran en mas de un 60% la cantidad de tablas que incumplen alguna de estas formas normales en una muestra de 40 bases de datos relacionales

Escoger 125. Al decir que un SGBD vela por la integridad de los datos, nos referimos a que

    los programas y esquemas no se vean afectados por cambios en datos que no usan

    los usuarios no pueden acceder a ciertos datos ni operaciones a menos que esten debidamente autorizados

    los datos estan debidamente interrelacionados y no hay interferencias en las lecturas y escrituras concurrentes (solucion)

Escoger 126. La organizacion indexada se basa en la idea de que

    no me preocupa el espacio ocupado en disco

    no se necesita insertar con demasiada frecuencia

    la seleccion de un campo cualquiera para la ordenacion de listados de datos es necesaria solo en muy contados casos

    es mas facil manejar archivos pequeños que incluso podrian caber en RAM para encontrar un registro concreto (solucion)

Escoger 127. Para un conjunto de atributos determinado, la integridad de clave consiste en

    la imposibilidad de almacenar nulos (solucion)

    que sus valores posibles son  los de una clave primaria

    la imposibilidad de ser clave ajena

Escoger 128. La independencia fisica en la arquitectura de 4 niveles de un SGBD se da entre

    el esquema logico y el interno (solucion)   

    el esquema conceptual y el logico

    el esquema interno y los esquemas externos

    el esquema logico y los esquemas externos

Escoger 129. SELECT T1.* FROM T1,T2 WHERE T1.a=T2.a AND T1.b=T2.b, en algebra relacional, podria ser

    la division

    la interseccion (solucion)

    el producto cartesiano

    la union

Escoger 130. Una especificacion de correspondencia entre clases Card(T,x) = (1,N)

    indica una generalizacion parcial y solapada

    se da cuando hay 2 claves ajenas, cada una en una tabla distinta, que "trabajan" para la misma relacion "X"

    es imposible en un esquema de base de datos relacionales (solucion)

Escoger 131. Una clave candidata puede contener nulos

    nunca (solucion)

    si no es, ademas, clave alternativa o primaria

    si esta compuesta por mas de un atributo

Escoger 132. En algebra relacional, el producto cartesiano entre 2 relaciones necesita

    que haya algun atributo con el mismo nombre y dominio en las 2 tablas

    no necesita nada, se puede hacer siempre que queramos (solucion)

    que estas sean compatibles

Escoger 133. Dentro de la arquitectura estandar de un sistema de gestion de bases de datos, los esquemas externos

    permiten las vistas parciales necesarias para las aplicaciones (solucion)

    comunican el esquema conceptual con el fisico (interno)

    representan los detalles de almacenamiento en un disco duro (ficheros, organizacion, indices, etc)

Escoger 134. Los discos flexibles (diskette, floppy) son almacenamiento

    primario

    secundario (solucion)

    no son nada, no sirven para almacenar datos sino que aumentaban la RAM en ordenadores del siglo pasado

Escoger 135. Un modelo de datos es

    una base de datos que sirve de modelo o plantilla para diseñar otras nuevas

    el convenio utilizado para diseñar, por ejemplo, bases de datos (solucion)

    una fase mas del desarrollo del software como el analisis, el diseño y la implementacion

Escoger 136. De cuarta forma normal y quinta forma normal

    si esta en FN4 no necesariamente esta en FN3

    su proceso de normalizacion descompone en nuevas tablas (solucion)

    su proceso de normalizacion proyecta nuevas tablas

Escoger 137. Si una relacion se define en funcion de sus atributos como R(a,b,c) y (a,b,c) es clave primaria,

    ya no se pueden definir mas claves candidatas (solucion)

    podria tener 4 claves candidatas: la primaria antes mencionada y las alternativas (a,c), (b,c) y (c)

    tendra como maximo 3 claves candidatas

Escoger 138. Con la llegada del modelo relacional

    el concepto de registro se matiza o se sustituye por el de tupla (solucion)

    el concepto de registro se matiza o se sustituye por el de fila

    tupla, registro y fila son exactamente lo mismo, en el contexto que sea

Escoger 139. La relacion matematica, antes de su adaptacion al modelo relacional

    tiene ordenadas las tuplas de una relacion

    tiene ordenadas los componentes de todas las tuplas de una relacion (solucion)

    no tiene orden alguno, ni de tuplas ni de componentes de tuplas

Escoger 140. La no duplicidad de tuplas en el modelo relacional se consigue mediante

    claves candidatas (solucion)

    claves ajenas

    indices de enteros cortos

Escoger 141. La organizacion aleatoria calculada (hash)

    puede necesitar registros o areas de desbordamiento (solucion)

    me optimiza, en tiempo, los listados ordenados por un campo cualquiera

    los registros estan, siempre, ordenados fisicamente por un campo clave

Escoger 142. La definicion de tablas en un SGBD relacional constituye

    la cardinalidad de la base de datos

    el esquema de la base de datos (solucion)

    el estado de la base de datos

Escoger 143. Si una relacion se define en funcion de sus atributos como R(a,b,c) y (a,b) es clave primaria,

    podra tener como maximo 3 claves candidatas (solucion)

    ya no se pueden definir mas claves candidatas

    podria tener 4 claves candidatas: la primera antes mencionada y las alternativas (a,c), (b,c) y (c)

Escoger 144. Si todo valor de clave ajena ha de aparecer en la tabla que hace referencia, nos estamos refiriendo a

    integridad referencial (solucion)

    integridad de clave

    restricciones de cardinalidad minima uno

Escoger 145. LIBROS(titulo, autor, tipo, precio, editor); Titulo, autor, tipo -> precio, editor; Precio, editor -> tipo. Las claves candidatas son

    (Titulo, autor, tipo) y (titulo, autor, precio, editor) (solucion)

    (Titulo, autor, tipo) y (precio, editor)

    (Precio, editor) y (tipo)

Escoger 146. Las propiedades de cobertura de una generalizacion son

    claves ajenas que son, al mismo tiempo, claves primarias o alternativas

    total o parcial, y solapada o disjunta (solucion)

    propagar, anular o rechazar

Escoger 147. Si R es una relacion compuesta por 3 atributos R(A,B,C), que las claves candidatas sean irreducibles significa que

    (A,C) y (A,B) pueden ser ambas claves candidatas (solucion)

    (A,B) no pueden ser clave candidata si (A) es clave ajena

    (A,B,C) no puede ser clave candidata

Escoger 148. Supon las relaciones R(A,C) y S(B,C,D). Calcula la concatenacion natural de R y S. ¿Cual de las siguientes tuplas saldra como resultado? Asume que cada tupla tiene un esquema (A,C, B, D)

    (7, 1, 5, 6) (solucion)

    (6, 3, 4, 9)

    (7, 5, 1, 8)

Escoger 149. Ventajas de la arquitectura cliente-servidor

    el servidor solo satisface peticiones de datos, y el cliente procesa estos datos (solucion)

    los datos estan en el cliente y es el servidor el que da formato a esos datos para presentarlos en pantalla

    centralizar grandes bases de datos en una sola maquina serivodor, eliminando toda redundancia posible

Escoger 150. Una tabla en el modelo relacional

    no puede tener filas duplicadas (solucion)

    cada columna debe tener un identificador

    define claramente el orden de sus filas

Escoger 151. LIBROS(titulo, autor, tipo, precio, editor); Titulo, autor, tipo -> precio, editor; Precio, editor -> tipo. La relacion esta en

    FN2 pero no en FN3

    FNBC    

    FN3 pero no en FNBC (solucion)

Escoger 152. La FN2 persigue que

    no haya dependencias funcionales transitivas

    no haya claves alternativas

    no haya dependencias funcionales incompletas (solucion)

Escoger 153. La definicion de la relacion matematica por intencion, despues de su adaptacion al modelo relacional es equivalente a su

    cardinalidad

    esquema (solucion)

    contenido

Escoger 154. Una restriccion de correspondencia entre clases de objetos de cardinalidad minima 3

    no es real, nunca se puede dar en ningun sistema de informacion

    nos dice que la ocurrencia del objeto esta presente en la agregacion al menos 3 veces (solucion)

    indica la existencia de 3 claves ajenas

Escoger 155. Los esquemas externos se pueden ver como

    el nivel de la arquitectura de un SGBD que permite evitar el gran abismo entre esquema conceptual y esquema interno

    subconjuntos del esquema interno que describe toda la base de datos

    descripciones de subconjuntos de datos y relaciones entre ellos, de interes para una o varias aplicaciones dadas (solucion)

Escoger 156. Los registros de longitud fija

    facilitan la recuperacion de registros concretos (solucion)

    nunca deberia utilizarse con la tecnologia actual

    tambien necesitan marcas para identificar el final del registro

Escoger 157. El operador concatenacion natural del algebra relacional, para poderse ejecutar apropiadamente

    necesita atributos con el mismo dominio pero no necesariamente con el mismo nombre

    necesita atributos con el mismo dominio y con el mismo nombre (solucion)

    precisa de claves ajenas

Escoger 158. La organizacion aleatoria calculada (hash)

    me optimiza, en tiempo, los listados ordenados por un campo cualquiera, no necesariamente la clave

    los registros estan, siempre, ordenados fisicamente por un campo clave (solucion)

    necesitan ficheros auxiliares para acceder mediante el valor clave, y despues, direccionar al fichero principal de datos

Escoger 159. R(A, B, C) y S(C,D). El semi-join de R y S, ¿que esquema obtendria?

    (A,B) (solucion)

    (A,B,C)

    (A,B,C,D,E)

Escoger 160. Por persistencia entendemos

    que el disco duro no se apaga nunca, en todo caso se deja en suspension

    almacenar informacion para su posterior recuperacion y proceso (solucion)

    el almacenamiento conceptual

Escoger 161. Un modelo de datos es

    la herramienta intelectual que nos permite estructurar los datos de forma que se capte la semantica de los mismos (solucion)

    una fase mas del desarrollo del software como el analisis, el diseño y la implementacion

    un esquema conceptual

Escoger 162. En toda relacion se puede encontrar al menos una clave candidata ya que el conjunto de todos los atributos de una relacion siempre

    cumple la propiedad de identificacion unica e irreducibilidad

    es una clave candidata

    cumple la propiedad de identificacion unica (solucion)

Escoger 163. Dentro de la arquitectura estandar de un sistema de gestion de bases de datos, los esquemas externos

    enlazan el sistema operativo con el esquema logico

    son los encargados de manejar el raton y el teclado del ordenador, entre los dispositivos de entrada y salida

    son el puente entre el esquema logico y las aplicaciones (solucion)

Escoger 164. Las bases de datos NoSQL

    son adecuadas para todo tipo de aplicacion sin excepcion

    generalmente no necesitan ni usan esquema de bases de datos, se dicen schema-less (solucion)

    utilizan variantes de SQL que no permiten ordenes SELECT de mas de una tabla

Escoger 165. Si todo valor de clave ajena ha de aparecer en la tabla a la que hace referencia, nos referimos a que

    restricciones de cardinalidad minima 1

    integridad referencial (solucion)

    integridad de clave

Escoger 166. Las dependencias funcionales se dan cuando cada valor de un atributo determina

    un unico valor de otro (solucion)

    un conjunto de valores de otro

    depende de una clave ajena

Escoger 167. La FNBC en una relacion R

    se cumple siempre si solo hay una clave candidata (solucion)

    se cumple cuando R esta en FN3 y tiene varias claves candidatas no solapadas

    no hace falta tratarla en si R ya esta en FN3 aunque no necesariamente en FN2

Escoger 168. En E-R, la agregacion

    consiste en encontrar subtipos dentro de una clase de objetos general

    permite relacionar entidades con relaciones (solucion)

    no admite atributos multivaluados

Escoger 169. Uno de los indicadores de la importancia del algebra dentro del modelo relacional es

    su uso en ciertos optimizadores de consultas (solucion)

    su potencia de calculo

    que SQL, por ejemplo, no ofrece operadores como la union, interseccion o diferencia

Escoger 170. Las bases de datos NoSQL son adecuadas

    para sistemas de informacion sin esquema o con un esquema excesivamente complejo (solucion)

    para cualquier sistema de informacion, sea critico o no en la ejecucion y gestion de transacciones

    en sistemas de informacion que manejen transacciones con dinero

Escoger 171. Cuando utilizamos tecnologia NoSQL para el almacenamiento y recuperacion de datos

    podemos estar tan seguros como en una base de datos relacional de que nuestros datos son consistentes, sin errores de correspondencia

    es porque nos preocupa que las claves ajenas cumplan con la integridad referencial

    asumimos que puede haber datos inconsistentes o falta de ellos, lo que no importa mucho dado el volumen de datos y su objetivo (solucion)

Escoger 172. La tecnologia NoSQL nace, entre otras razones

    por facilitar y abaratar el escalado horizontal los sistemas de base de datos (solucion)

    porque es mas facil programar con este tipo de base de datos

    debido a que las bases de datos relacionales no permiten tener los datos distribuidos geograficamente

Escoger 173. Las bases de datos NoSQL son mas rapidas que las relacionales:

    siempre, nacieron para eso, para batir a esos sistemas

    depende de en que aplicaciones y del volumen de datos (solucion)

    nunca, las realmente rapidas son las de Google o de Amazon, y ellos no permiten que otros las usen

Escoger 174. Si justo despues de crear una tabla ejecutamos un ROLLBACK

    La instruccion quedara suspendida (bloqueada y sin terminar), esperando a que otra sesion diferente cancele o confirme la creacion de la tabla

    La tabla permanecera intacta, ya que la creacion de la tabla es una sentencia autoconfirmada (solucion)

    Oracle producira un error, ya que no sabra que hacer

    La tabla sera eliminada, ya que la instruccion ROLLBACK cancelara la transaccion en curso

Escoger 175. ¿Cual es el proposito de la OLTP?

    Facilita y administra aplicaciones y transacciones (solucion)

    Facilitamiento de los tiempos de carga debido al almacenamiento de los datos en la memoria principal

    Favorece la divulgacion y analisis de los datos

Escoger 176. En las bases de datos relacionales, una relacion consta de

    Un atributo y un valor

    Un esquema y un cuerpo (solucion)

    Un dominio y un valor

    Un atributo y un dominio

Escoger 177. Si un usuario crea una vista sobre una o varias de sus propias tablas y las esta manipulando bajo una unica sesion, indique la respuesta correcta

    Si modifica (y confirma) las filas de las tablas sobre las que se define la vista tendra que volver a generar la vista, pues de lo contrario el acceso a la vista generara un error

    Si modifica las filas de las tablas sobre las que define la vista, la vista no mostrara el contenido "actualizado" mientras no confirme las modificaciones sobre las tablas origen

    Las filas de las tablas usadas para la construccion de una vista no pueden ser modificadas, para poder hacerlo debemos borrar la vista

    La consulta de la vista se lanza cada vez que accedemos a ella, por la que siempre mostrara la version mas actual visible (y confirmada) de las tablas sobre las que define (solucion)

Escoger 178. Indique la respuesta correcta respecto a la desconexion de una sesion en el gestor de base de datos de Oracle

    Todas son correctas (solucion)

    Si tengo varias sesiones abiertas con el mismo usuario y desconecto una de ellas las demas seguiran activas

    Si desconecto la sesion mediante la interrupcion abrupta de la conexion de red (quito el cable, desconecto la wifi o mato el proceso) todos los cambios sin confirmar seran automaticamente anulados

    Si desconecto la sesion mediante el boton de desconexion o el comando de salida todos los cambios sin confirmar seran automaticamente confirmados

Escoger 179. ¿Que es una base de datos centralizada?

    Una base de datos con la informacion localizada en varios puntos

    Una base de datos con la informacion que esta localizada en un punto, con acceso desde cualquier lugar

    Una base de datos de proposito general (solucion)

Escoger 180. En la arquitectura a 3 niveles, ¿cual es la mas cercana a los usuarios?

    Nivel externo (solucion)

    Nivel conceptual

    Nivel interno

Escoger 181. Indique la respuesta correcta respecto a la independencia de datos en la arquitectura de 3 niveles:

    Es la propiedad que permite realizar modificaciones en un nivel sin afectar a ningun otro nivel, ya sean superiores o inferiores

    Es la propiedad que permite realizar modificaciones en un nivel sin afectar al nivel inmediato inferior

    Es la propiedad que permite la internacionalizacion de las cadenas de caracteres

    Es la propiedad que permite realizar modificaciones en un nivel sin afectar al nivel inmediato superior (solucion)

Escoger 182. Una relacion 1-N entre 2 entidades A y B, da lugar en el modelo relacional a

    Se obtienen 3 tablas: Tabla A, tabla B mas la tabla R (la resultante de la relacion)

    Tabla A con sus atributos. Tabla B con sus atributos mas los de la clave primaria de la entidad A (solucion)

    Tabla A con sus atributos mas los de la clave primaria de la entidad B. Tabla B con sus atributos mas los de la clave primaria de la entidad A

    Tabla B con sus atributos. Tabla A con sus atributos mas los de la clave primaria de la entidad B

Escoger 183. Los metadatos son:

    Un catalogo completo con toda la descripcion sobre el programa y el uso de este

    Un catalogo completo con toda la descripcion del usuario y del equipo usado

    Un catalogo completo con toda la descripcion de la estructura y restricciones de los datos (solucion)

Escoger 184. ¿Cual es el principal objetivo del SGBD?

    Contener informacion de los usuarios, manipularla, diseñar base de datos y utilizar sus lenguajes

    Compartir datos a los usuarios

    Proporcionar una forma de describir, recuperar y manipular los datos integrados en la base de datos, asegurando confidelidad y seguridad (solucion)

Escoger 185. Segun su modelo de datos

    Las bases de datos jerarquicas se basan en la Logistica Clasica

    Las bases de datos relacionales se basan en la Teoria de Conjuntos (solucion)

    Las bases de datos relacionales se basan en la Logica Clasica

Escoger 186. Indique la respuesta correcta respecto al incumplimiento de las formas normales en un esquema de base de datos:

    El gestor de base de datos no asegura el cumplimiento de las formas normales, el incumplimiento de las formas normales unicamente afecta a la elegancia del diseño y no tiene repercusiones sobre la informacion

    El gestor de base de datos no asegura el cumplimiento de las formas normales, pudiendo existir problemas en la coherencia e integridad de la informacion que el gestor no puede controlar (solucion)

    Si incumplo alguna forma normal el gestor de base de datos emite un error

    El gestor de base de datos no asegura el cumplimiento de las formas normales, pero la informacion extraida de un esquema que incumpla alguna de ellas sera erronea

Escoger 187. El objetivo de la arquitectura en tres niveles Ansi/Sparc es:

    Crear grandes repositorios de datos

    Facilitar los tiempos de respuesta y de acceso a la base de datos

    Independencia de los datos: propiedad de modificar un nivel sin que se vean afectados los niveles superiores (solucion)

Escoger 188. Segun la arquitectura en tres niveles ANSI/SPARC el nivel externo de una base de datos:

    Se define utilizando el lenguaje de definicion de datos proporcionado por el Sistema Gestor de Base de Datos (solucion)

    Esta formado por el interfaz grafico de la aplicacion que se comunica con el Sistema Gestor de Base de Datos

    Describe la conexion entre los metadatos y los ficheros del sistema operativo

Escoger 189. ¿Que son las bases de datos distribuidas?

    Bases de datos formadas por computadores no relacionados entre si

    Bases de datos formadas por computadores relacionados entre si, ubicados en espacios diferentes (solucion)

    Bases de datos formadas por computadores relacionados entre si

Escoger 190. ¿Que problema tenian los ficheros para que fueran necesarias las bases de datos?

    Ocupaban demasiado espacio para la capacidad de la epoca

    Dificultad para que varias aplicaciones compartieran los datos (solucion)

    No se podian utilizar en cintas magneticas

Escoger 191. Definicion de base de datos:

    Ambas son correctas (solucion)

    Coleccion de datos que estan logicamente relacionados entre si, que tienen una definicion y una descripcion comunes y que estan estructurados de una forma peculiar

    Coleccion de programas que aseguran el acceso a los datos

Escoger 192. La variable :new

    Tiene todos sus valores a NULL si la instruccion es UPDATE o DELETE

    Contiene todas las filas insertadas en un trigger "instead of"

    Se puede usar en la clausula WHERE de una sentencia SQL, pero no en PL/SQL

    Se puede utilizar en el cuerpo de un trigger "for each row" (solucion)

Escoger 193. En el modelo Entidad-Interrelacion dos tipos de entidades relacionadas con cardianlidad (1,1)-(1,1) y con diferente identificador ...

    Describe tipos de entidades fuertes relacioandas (solucion)

    Uno de los tipos de entidades es debil

    No pueden darse este tipo de relaciones y se trata de un error de diseño

    Debe tener un identificador candidato comun

Escoger 194. Una base de datos:

    Contiene ficheros, archivos e indices

    Es una coleccion de ficheros relacionados entre si

    Necesariamente esta formada por una metabase de datos (solucion)

    Elimina todos los problemas en los datos producidos por el uso de programas construidos con lenguajes de tercera y cuarta generacion

Escoger 195. Una base de datos debe ser integra...

    Para garantizar la veracidad de los datos (solucion)

    Para que no se pierdan los datos y esten relacionados

    Para que los datos sean seguros y esten bien almacenados

    Si no, no seria una base de datos

Escoger 196. La ligadura conceptual...

    Afecta al desempeño de la base de datos

    Es dependiente del SGBD

    Ninguna es correcta (solucion)

    Se realiza entre la vision conceptual y logica

Escoger 197. En los SGBD relacionales...

    La vision fisica puede ser modificada por el UML

    Ninguna de las respuestas es correcta

    El DSDL es un lenguaje especifico para manipular la vision fisica

    El DML y el DSDL es el mismo lenguaje (solucion)

Escoger 198. Dada una relacion R(a,b,c), si para cada valor de 'a', el atributo 'b' puede tomar 6 valores y el atributo 'c' puede tomar cualquier valor...

    La relacion no esta en FNBC

    Existe una dependencia funcional

    Existe una dependencia de union

    Existe una dependencia multivaluada (solucion)

Escoger 199. En una base de datos, la privacidad de los datos es...

    Garantizada por el UML

    Definida por los requisitos del modelo de negocio y gestionada por los desarrolladores

    Definida y controlada por el administrador de la base de datos (solucion)

    Gestionada por los desarrolladores de los programas de aplicacion

Escoger 200. En el modelo Entidad-Interrelacion...

    Un tipo de entidad es debil por identificacion porque no es debil por existencia

    Un tipo de entidad es debil por identificacion por la naturaleza del problema y no se puede remediar (solucion)

    Un tipo de entidad es debil por identificacion porque existen tipos de entidades fuertes con las que esta relacionada

    Un tipo de entidad es debil por identificacion porque hay un tipo de interrelacion debil por identificacion

Escoger 201. Una base de datos...

    No puede contener informacion desconocida

    La informacion desconocida esta oculta al usuario

    La informacion desconocida es un dato conocido (solucion)

    La informacion desconocida no se puede manejar ni consultar

Escoger 202. En el modelo Entidad-Interrelacion los tipos de interrelaciones (1,1)-(1,1)-(1,1) y con el mismo identificador...

    No pueden darse este tipo de relaciones y se trata de un error de diseño (solucion)

    Describen un tipo de entidad cuyos atributos es conveniente describirlos por separado

    Deben unirse en un mismo tipo de entidad

    Deben tener un identificador candidato comun

Escoger 203. La vision conceptual y logica:

    Deben ser creadas por la misma o el mismo grupo de personas para garantizar el correcto diseño

    Se generan al mismo tiempo cuando se conoce el SGBD

    Pueden ser la misma (solucion)

    Siempre son diferentes

Escoger 204. En el modelo Entidad-Interrelacion...

    Existe un maximo numero de tipos de entidades que participan en un tipo de interrelacion

    El conjunto de interrelaciones no puede ser nulo, sino no habria relaciones entre entidades

    Los tipos de interrelaciones son rombos con nombre

    Los tipos de interrelaciones relacionan uno o infinitos conjuntos (solucion)

Escoger 205. Cuando clasificamos

    Proponemos una opinion sobre los objetos de un fenomeno

    No es conveniente clasificar a no ser que sea estrictamente necesario, y en ningun caso en modelos relacionales

    Generalizamos sobre los objetos de un fenomeno (solucion)

Escoger 206. En el modelo Entidad-Interrelacion de un tipo de interrelacion (1,1)-(?,n)...

    Debe conocerse el valor de ? para saber como tratarla posteriormente

    No puede darse en ningun caso

    Implica debilidad (solucion)

    Uno de los tipos de entidad hereda el atributo identificador del otro tipo de entidad

Escoger 207. De las siguientes afirmaciones, indica cual es cierta respecto a una base de datos relacional:

    Las relaciones 1:N entre los datos se representan por tablas

    Los datos se representan en tablas, las relaciones entre los datos no

    Las relaciones entre los datos son siempre definidas por claves foraneas

    La respuesta a las consultas se configura en forma de tabla (solucion)

Escoger 208. La aplicacion de la FNBC...

    Selecciona a los determinantes funcionales y los define como clave candidata o principal

    Requiere crear los determinantes funcionales

    Elimina los determinantes funcionales y crea nuevas tablas sin redundancia

    Convierte cada determinante funcional en clave principal de una tabla (solucion)

Escoger 209. En una base de datos...

    No existen ficheros como los que se construyen con lenguajes de programacion

    Todos los ficheros estan indexados por una o varias claves para poder garantizar un acceso muy rapido

    Los ficheros son archivos definidos por el usuario

    Puede contener ficheros planos (solucion)

Escoger 210. En el modelo Entidad-Interrelacion...

    Pueden existir atributos que su dominio no este definido previamente

    Los tipos de entidades pueden no tener atributos identificadores

    No existen tipos de entidades sin atributos (solucion)

    Todos los atributos de un tipo de entidad pueden estar definidos en un dominio que admitan el valor NULL

Escoger 211. En el modelo Entidad-Interrelacion los subtipos de entidad...

    Son inclusivos para poder tomar varios valores el atributo clasificador

    Son inclusivos cuando tienen atributos diferentes

    Son inclusivos cuando el atributo clasificador puede tomar dos o mas valores a la vez

    Son inclusivos cuando el atributo clasificador puede tomar mas diferente para cada subtipo (solucion)

Escoger 212. Las formas normales se aplican...

    Para eliminar las dependencias funcionales en las tablas (solucion)

    Para evitar las dependencias funcionales en las tablas

    Para tener tablas mas finas

    Para independizar las dependencias funcionales en las tablas

Escoger 213. La determinacion de los limites de un fenomeno o problema del mundo real...

    Esta definida por los objetos del modelo (solucion)

    Es una frontera abstracta que se define al comienzo del modelado

    Es determinada por el diseñador del modelo

    Nunca puede considerar objetos independientes no relacionados

Escoger 214. Dada la relacion R(a,b,c,d), si a->b, y a->c...

    a es la clave principal

    Se cumple que a->(b+c) (solucion)

    Entonces a->b es incompleta

    Entonces b y c es un agregado de datos

Escoger 215. Dadas las siguientes tablas: R1(a,b,c,d,e) y R2(c,f,g)...

    Esta presente una dependencia funcional R1.c->R2.c

    R1.c podra tomar valores nulos (solucion)

    Es un error de diseño relacional

    R2 deberia eliminarse y sus atributos parar a R1

Escoger 216. No existen bases de datos...

    Que no esten basadas en un modelo de datos (solucion)

    Que hayan tenido una caida alguna vez

    Que sean menores de 500 Kb

    Que puedan ser accedidas desde lenguajes de tercera generacion

Escoger 217. Los modelos de datos...

    Requieren de un SGBD para su uso

    Estaticos son graficos y dinamicos son tabulares

    Pueden ser vistos como reglas que describen un fenomeno (solucion)

    Estaticos son graficos

Escoger 218. En el modelo Entidad-Interrelacion...

    Los dominios son la extension de los atributos

    Ninguna de las respuestas es correcta

    Los atributos no tienen extension

    La extension de un atributo esta restringida por un dominio (solucion)

Escoger 219. Los SGBD permiten que:

    Los programas de aplicacion realizados en algunos lenguajes de programacion deben incluir sentencias del DML para acceder a los datos (solucion)

    Los programas de aplicacion realizados en algunos lenguajes de programacion no pueden acceder a los datos de la base de datos de la vision fisica

    Los programas de aplicacion realizados en algunos lenguajes de programacion pueden acceder directamente a los datos

    Los programas de aplicacion realizados en algunos lenguajes de programacion deben estar incluidos en el diccionario de datos

Escoger 220. La vision fisica de la base de datos:

    Es dependiente del SGBD y del administrador de la base de datos (solucion)

    Es dependiente del SGBD

    Solo depende de la vision logica

    Es independiente del SGBD

Escoger 221. Una granularidad alta:

    Facilita la creacion de la vision externa

    Es posible en las bases de datos relacionales

    Incrementa la independencia (solucion)

    Simplifica los programas de aplicacion

Escoger 222. Los atributos de una tabla en el modelo relacional...

    Representan siempre conjuntos relacionados

    Representan siempre a los atributos de las relaciones entre objetos, incluso consigo mismo

    Representan siempre a los atributos de un objeto y/o relaciones entre objetos (solucion)

    Representan siempre a los atributos de un object

Escoger 223. En el modelo jerarquico...

    Para acceder al tipo de registro hijo es necesario acceder a un registro padre (solucion)

    Todas las respuestas son correctas

    Se puede acceder a cualquier tipo de registro hijo desde el nodo raiz

    Los registros de cualquier tipo pueden ser accedidos con punteros definidos por el usuario

Escoger 224. Mediante un modelo de datos...

    Se determinan los limites del problema

    Se activan las reglas para manejar la informacion de un problema del mundo real

    Se da solucion a un problema del mundo real

    Se representa los objetos, relaciones y comportamiento de un fenomeno o problema del mundo real (solucion)

Escoger 225. En el modelo jerarquico...

    Ninguna respuesta es correcta

    El orden de los registros es siempre segun el orden de insercion

    Los registros no estan ordenados

    Los registros pueden estar ordenados de muchas formas (solucion)

Escoger 226. En el modelo Entidad-Interrelacion los subtipos de entidad...

    No pueden mantener tipos de interrelaciones con el supertipo de entidad

    Se pueden relacionar entre ellos si tienen atributos diferentes

    Se pueden relacionar entre ellos y con el supertipo de entidad (solucion)

    No pueden mantener tipos de interrelaciones entre ellos

Escoger 227. La FN2...

    Elimina de la relacion dependencias funcionales de aumento

    Elimina de la relacion dependencias funcionales debidas a atributos multiples

    Elimina de la relacion dependencias funcionales incompletas (solucion)

    Elimina de la relacion dependencias funcionales reflexivas

Escoger 228. En el modelo Entidad-Interrelacion los tipos de interrelaciones (1,1)...

    Aparecen cuando los dos tipos de entidades tienen el mismo identificador principal

    Aparecen cuando los dos tipos de entidades tienen los mismos identificadores candidatos

    Aparecen por una debilidad por identificacion

    Representan tipos de entidades fuertes (solucion)

Escoger 229. El administrador de la base de datos

    Selecciona el lenguaje de manipulacion de datos

    Ninguna es correcta

    Selecciona el lenguaje para definir los datos

    Selecciona las estructuras fisicas de la base de datos (solucion)

Escoger 230. En el modelo Entidad-Interrelacion, si un tipo de entidad es un rectangulo y un tipo de interrelacion es un rombo...

    Ninguna de las respuestas es correcta (solucion)

    Una entidad es un rectangulo y una interseccion es un arco

    Una entidad es un arco y una interrelacion es un rombo

    Una entidad es un rectangulo y una interrelacion es un rombo

Escoger 231. Una base de datos semantica es:

    Una base de datos relacional con informacion de los atributos y relaciones

    Una base de datos basada en un modelo conceptual que incluye la semantica del modelo (solucion)

    Ninguna es correcta

    Una metabase de una base de datos que describe la semantica de los atributos

Escoger 232. Un modelo que no tenga supertipos de objetos...

    Carece de subtipos de objetos (solucion)

    No se habra aplicado el mecanismo de clasificacion

    Es demasiado simple para representar un problema y posiblemente estara incompleto

    Sera un modelo que sufrira de redundancia en su implementacion

Escoger 233. Cuando se construye un modelo relacional de un problema:

    Se pueden usar todos los mecanismos de la abstraccion

    No se pueden agregar subtipos de objetos

    Los supertipos de objetos son tablas

    El refinamiento genera nuevas tablas (solucion)

Escoger 234. En el modelo Entidad-Interrelacion los tipos de interrelaciones (1,1)-(0,1) y no compartiendo el mismo identificador...

    Representan una debilidad de dominio de los atributos del tipo de entidad que participa con cardinalidad (0,1)

    Pueden compartir identificadores candidatos

    Representan una relacion padre-hijo (solucion)

    Ninguna es correcta

Escoger 235. En el modelo Entidad-Interrelacion...

    El dominio de un atributo identificador debe ser pequeño

    El dominio de un atributo identificador debe ser literal o numerico

    Ninguna es correcta (solucion)

    El dominio de un atributo identificador puede ser de cualquier tipo excepto NULL

Escoger 236. En el modelo Entidad-Interrelacion los tipos de interrelaciones ternarias...

    Deben ser descompuestas siempre en tipos de interrelaciones binarias

    Su existencia es debido a errores de diseño

    Alguno de los tipos de entidad puede ser debil por identificacion

    Son muy comunes en muchos problemas del mundo real (solucion)

Escoger 237. Un producto cartesiano de R1(a,b,c) con 10 tuplas y R2(a,b,c) con 20 tuplas, da como resultado

    Un error porque es la misma tabla

    Una tabla R3(a,b,c,a,b,c) con 200 tuplas (solucion)

    Una tabla R3(a,b,c) con 200 tuplas

    Una tabla R3(a,b,c,a,b,c) con maximo de 20 tuplas

Escoger 238. En el modelo Entidad-Interrelacion...

    La intencion de una entidad es definida por la agregacion de un conjunto de dominios (solucion)

    La intencion de una entidad no se conoce hasta que no toma valores

    La intencion de una entidad tiene valores fijos

    Una entidad no tiene intencion

Escoger 239. Dada la relacion R(a,b,c,d), si a->b, y b equivale (c,d)...

    Entonces c->d
    
    Entonces a->c (solucion)

    Entonces a->b es incompleta

    a es la clave principal

Escoger 240. DML es un lenguaje...

    Que permite la creacion de subesquemas (solucion)

    Que posibilita manipular y modificar la vision logica

    Procedimental que aumenta el desempeño de la base de datos

    No procedimental que garantiza la integridad de la base de datos

Escoger 241. En el modelo relacional, si dos tablas tienen la misma clave principal y a la vez foranea...

    Debe definirse como alterna

    Existe un error de diseño

    Deben definirse las dos como alterna o eliminar una de las foraneas

    Las claves foraneas no pueden tomar valores NULL (solucion)

Escoger 242. En el modelo en red:

    Los tipos de registros ficticios representan relaciones ternarias

    Los tipos de registros ficticios nunca generan redundancia de informacion

    Los tipos de registros ficticios no pueden contener atributos redundantes

    Los tipos de registros ficticos suelen contener atributos redundantes (solucion)

Escoger 243. Los modelos de datos...

    Pueden ser estaticos, dinamicos, temporales, aleatorios,..., de muchos tipos a la vez

    Siempre describen la estatica y dinamica de un fenomeno o problema

    Son parte del SGBD

    Pueden describir la incertidumbre del problema (solucion)

Escoger 244. Los usuarios son considerados un componente mas del SGBD...

    Debido a que conocen y manejan el SGBD

    Algunos son tecnicos que crean objetos de la base de datos

    Tienen privilegios para introducir, modificar y borrar datos

    Son parte del sistema de informacion el que se usa la base de datos (solucion)

Escoger 245. La interseccion de dos tablas...

    Genera una tabla con tantas tuplas como la diferencia de las tuplas de ambas tablas

    Genera una tabla con tantas tuplas como tuplas tengan las dos tablas

    Genera una tabla con las tuplas no repetidas de ambas tablas

    Gera una tabla con tantas tuplas como tuplas comunes exista en ambas tablas (solucion)

Escoger 246. Una base de datos...

    Representa un instante de un problema del mundo real (solucion)

    Representa la informacion acerca de un problema del mundo real

    Representa un problema del mundo real y todas sus caracteristicas

    Es la solucion para representar los problemas del mundo real

Escoger 247. En el modelo relacional, una dependencia funcional...

    Debe ser siempre completa

    Existe por un error de diseño y por eso debe eliminarse

    Existe por la existencia de una relacion de dominio entre dos atributos (solucion)

    Existe por la existencia de una relacion entre dos atributos simples

Escoger 248. La agregacion es un mecanismo de la abstraccion para...

    Describir las partes de otra abstraccion (solucion)

    Para describir las propiedades en una especializacion
    
    Para llevar a cabo la creacion de un objeto

    Para refinar un objeto complejo

Escoger 249. En una base de datos...

    Los atributos son datos independientes en la base de datos

    Los atributos son metadatos asociados a otros metadatos (solucion)

    Los atributos son datos de otra base de datos

    Los atributos son metadatos definidos para garantizar la integridad

Escoger 250. El modelo Entidad-Interrelacion surge...

    Como un modelo conceptual independiente del SGBD (solucion)

    Por los problemas del modelo en Red

    Porque Peter Chen hizo su tesis doctoral

    Para ayudar a diseñar bases de datos conceptuales, traspasando los modelos EE-R a relaciones facilmente

Escoger 251. En el modelo Entidad-Interrelacion los tipos de interrelaciones (1,1)-(0,1) compartiendo el mismo identificador...

    Atributos de un mismo tipo de objeto que ha sido conveniente representarlos por separado

    La existencia de una debilidad de dominio

    Todas son correctas (solucion)

    Pueden unirse en un mismo tipo de entidad definiendo los atributos del tipo de entidad que participa (0,1) en un dominio que pueda tomar valores nulos

Escoger 252. La ligadura logica:

    Relaciona la vision canonica y fisica

    Relaciona los programas de aplicacion con la vision logica

    Relaciona una vision externa con la vision logica (solucion)

    Relaciona la vision logica y conceptual

Escoger 253. Dada la siguiente informacion, determinar en que forma normal se encuentra: R1(a,b,c,d,e), R2(f,g,h); (a+b)->c,d,e; f->g,h; c->g

    R1 en FN3 y R2 en FNBC

    Ninguna es correcta

    R1 en FN2 y R2 en FN1

    R1 en FNBC y R2 en FNBC (solucion)

Escoger 254. De los siguientes campos de un tipo de entidad, indica cual podria ser un identificador candidato:

    Nombre y apellidos

    Cualquiera de ellos (solucion)

    Documento Nacional de Identidad

    Puesto de Direccion/Responsabilidad

Escoger 255. En el modelo Entidad-Interrelacion un tipo de interrelacion (1,1)-(?,n)...

    Implica debilidad (solucion)

    Uno de los tipos de entidad hereda el atributo identificador del otro tipo de entidad

    No puede darse en ningun caso

    Debe conocerse el valor de ? para saber como tratarla posteriormente

Escoger 256. En el modelo Entidad-Interrelacion los subtipos de entidad...

    Tienen los mismos atributos

    No necesariamente tienen los mismos atributos (solucion)

    No se pueden especializar pero si mantener otros tipos de interrelaciones

    Tienen exactamente los mismos atributos que el supertipo de entidad

Escoger 257. Dada la relacion R(a,b,c,d), siendo a y b claves candidatas...

    Se cumple que (a+c)->(b+c) (solucion)

    Se cumple que (a+c)->(b+d)

    Se cumple que (a+c)->b

    El atributo a debe ser simple y se cumple que a->b

Escoger 258. Aplicamos la FN1

    Para eliminar los atributos compuestos

    Para eliminar los atributos multiples (solucion)

    Para eliminar las dependencias funcionales incompletas

    Para eliminar las dependencias funcionales completas

Escoger 259. En el modelo Entidad-Interrelacion un supertipo de entidad...

    No puede relacionarse con uno o varios de sus subtipos de entidad

    Puede relacionarse con cualquier supertipo de entidad incluido el mismo (solucion)

    Debe estar relacionado con algun otro tipo de entidad

    Ninguna es correcta

Escoger 260. En el modelo Entidad-Interrelacion...

    Las entidades debiles por identificacion pueden no tener atributos identificadores

    Las entidades debiles por identificacion tienen un atributo compuesto como identificador (solucion)

    Las entidades debiles por identificacion no son debiles por existencia, y tienen como atributos identificadores uno o varios

    Las entidades debiles por identificacion tienen como identificador el identificador de la entidad fuerte

Escoger 261. En el modelo Entidad-Interrelacion un supertipo de entidad...

    No tiene atributos clasificadores

    Tiene al menos un atributo clasificador

    Tiene un solo atributo clasificador (solucion)

    Se especializa en uno o muchos subtipos de entidad

Escoger 262. La versatilidad de las bases de datos es una caracteristica que:

    Hace versatiles a las bases de datos

    Simplifica la capacidad de acceso

    Simplifica la representacion del problema (solucion)

    Aumenta el desempeño fisico

Escoger 263. En el modelo Entidad-Interrelacion...

    Una entidad puede ser una interrelacion

    No existen entidades sin estar relacionadas

    Una entidad es la instanciacion de un tipo de entidad (solucion)

    Las entidades son conocidas por el diseñador

Escoger 264. Cuando un modelo de datos conceptual acerca de un fenomeno se modifica:

    La vision externa de la base de datos se modifica

    La estructura logica de la base de datos se modifica (solucion)

    Se debe empezar a hacerlo de nuevo

    La base de datos no se modifica

Escoger 265. En el modelo en red:

    Los registros de un tipo de registro pueden tener multiples ordenaciones (solucion)

    Los registros de un tipo de registro se ordenan siempre por una clave principal

    Los registros de un tipo de registro no tiene orden

    Los registros de un tipo de registro se ordenan en base al DBTG en que participa

Escoger 266. En el modelo Entidad-Interrelacion un tipo de interrelacion (1,n)-(1,1)...

    Implica debilidad (solucion)

    Es una representacion de una herencia

    El identificador del tipo de entidad que participa con (1,1) esta definido en el otro tipo de entidad

    Deberia especificarse como (1,1)-(1,n)

Escoger 267. Conocidas las proridades que participan en un problema del mundo real, los modelos de datos usan la abstraccion mediante mecanismos de...

    Todas son ciertas

    Generalizacion y refinamiento

    Agregacion y refinamiento

    Generalizacion y agregacion (solucion)

Escoger 168. En el modelo relacional, si dos tablas tienen la misma clave principal y a la vez foranea...

    Existe un error de diseño

    Representa una relacion (1,1) entre el mismo tipo de objeto (solucion)

    Representa una integridad de dominio fuerte de los atributos clave

    Representa relaciones fuertes (1,1) o (1,n) entre tipos de entidades

Escoger 169. En el modelo Entidad-Interrelacion...

    El identificador principal de una entidad nunca puede ser NULL, pero el candidato puede no tomar valor

    El dominio de un identificador alternativo es el mismo que si fuera candidato (solucion)

    Un identificador alternativo puede estar definido en cualquier dominio

    El dominio de un identificador alternativo y candidato debe ser diferente al identificador principal

Escoger 170. En el modelo relacional, una dependencia funcional

    Considera la dependencia entre dos atributos de una tabla (solucion)

    Considera las dependencias entre los atributos de la base de datos

    Considera las dependencias entre los atributos primos y no primos de una tabla

    Considera los valores de los atributos de una tabla que esten relacionados

Escoger 171. En el modelo jerarquico...

    Los punteros siempre apuntan del tipo de registro padre al hijo

    Los punteros se manejan de forma logica en un numero definido por el usuario

    No existen punteros fisicos

    Ninguna de las anteriores (solucion)

Escoger 172. En el modelo jerarquico...

    Ninguna es correcta (solucion)

    Las relaciones (n:n) se implementan duplicando los punteros de los registros aunque suponga redundancia

    Las relaciones (n:n) se pueden implementar modificando el modelo conceptual

    Las relaciones (n:n) no se pueden implementar

Escoger 173. En el modelo relacional...

    En esquemas diferentes las tablas pueden tener igual nombre (solucion)

    No existe limitacion para nominar las tablas

    El nombre de las tablas debe ser el mismo que el tipo de entidad

    Las tablas pueden ser estaticas y dinamicas segun se nominen

Escoger 174. En el modelo Entidad-Interrelacion...

    La debilidad por fortaleza de otras entidades da lugar a entidades debiles

    Una entidad es debil porque hay otra entidad fuerte

    Una entidad es debil porque hay semantica que no se puede representar

    La entidad es debil por la naturaleza del problema (solucion)

Escoger 175. En una tabla del modelo relacional...

    Los atributos pueden estar definidos en dominios simples

    Los atributos pueden estar definidos en cualquier dominio (solucion)

    Los atributos deben estar definidos en dominios simples y distintos

    Los atributos deben estar definidos en dominios diferentes

Escoger 176. La herramienta informatica que permite crear, manipular, gestionar y eliminar los datos y las estructuras de una base de datos es:

    Una base de datos jerarquica/red

    Un SGBD (solucion)

    Una base de datos relacional

    Ninguna es correcta

Escoger 177. En el modelo Entidad-Interrelacion...

    Los tipos de entidades debiles son dobles rectangulos y los tipos de interrelaciones debiles son dobles rombos

    Ninguna es correcta (solucion)

    Los tipos de entidades fuertes son rectangulos dobles y los atributos identificadores estan rellenos

    Los tipos de entidades debiles son dobles rectangulos

Escoger 178. Una vision canonica de la base de datos...

    Es dependiente del SGBD (solucion)

    La vision fisica debe considerarse

    Se deriva de la vision logica y de ella la vision externa

    Debe ser derivada de la vision externa

Escoger 179. Un modelo de datos relacional...

    Puede estar basado en diferentes teorias

    Debe describirse con SQL

    Debe acompañarse de una representacion grafica de las tablas

    Debe siempre derivarse de un modelo EE-R (solucion)

Escoger 180. La granularidad...

    Afecta a la vision externa (solucion)

    Determina la forma de describir la vision logica

    Es alta o baja en funcion del tamaño de los objetos de la base de datos

    Debe describirse en la vision conceptual

Escoger 181. En el modelo Entidad-Interrelacion...

    Los atributos derivados solo pueden ser parte del identificador principal cuando existe una debilidad por identificacion (solucion)

    Los atributos derivados y calculados pueden ser identificadores

    Los atributos derivados y calculados solo son identificadores si existe una debilidad entre tipos de entidad

    Los atributos derivados pueden ser identificadores, los calculados no, aunque haya debilidad