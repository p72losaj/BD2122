--PRÁCTICA 1
-- create table, alter table, truncate, delete, drop table, insert, update

SELECT atributo/s que se seleccionan
FROM tabla/s que se seleccionan
[WHERE] condiciones
[GROUP BY] agrupar en base a algo
[HAVING] indicar condiciones a un group by
[ORDER BY] para ordenar la salida ;


SELECT * FROM votantes;

SELECT v.dni,v.nombrecompleto FROM votantes v;

SELECT votantes.dni,votantes.nombrecompleto FROM votantes;

SELECT v.dni,v.nombrecompleto "Nombre del votante" FROM votantes v;

--Mostrar los votantes nacidos en la decada de los 90
SELECT v.nombrecompleto,v.fechanacimiento FROM votantes v
WHERE v.fechanacimiento >= '01/01/1990' AND v.fechanacimiento <= '31-12-99'; 

--Mostrar el nombre de los votantes y el nombre de su localidad
SELECT v.nombrecompleto, l.nombre FROM votantes v, localidades l
WHERE v.localidad=l.idlocalidad;

--Mostrar el nombre de los votantes seguido del nombre de su localidad (concatenarlo)
SELECT v.nombrecompleto || ' vive en ' || l.nombre 
FROM votantes v, localidades l
WHERE v.localidad=l.idlocalidad;

SELECT CONCAT(CONCAT(v.nombrecompleto,' vive en '),l.nombre) AS "Votante y localidad"
FROM votantes v, localidades l
WHERE v.localidad=l.idlocalidad;

--Mostrar el nombre de los votantes, el nombre de su localidad y el nombre de la provincia
SELECT v.nombrecompleto, l.nombre, p.nombre
FROM votantes v, localidades l, provincias p
WHERE v.localidad=l.idlocalidad AND l.provincia=p.idprovincia;

--Mostrar la edad del votante más joven
SELECT MAX(v.fechanacimiento)
FROM votantes v;

--Mostrar la edad del votante más viejo
SELECT MIN(v.fechanacimiento)
FROM votantes v;

--Mostrar el número de habitantes más grande de la tabla localidades
SELECT MAX(l.numerohabitantes)
FROM localidades l;

--Mostrar el nombre de la localidad con mayor número de habitantes
SELECT l1.nombre
FROM localidades l1
WHERE l1.numerohabitantes = (SELECT MAX(l2.numerohabitantes)
                            FROM localidades l2);
                            
--Mostrar el nombre del votante más viejo
SELECT v.nombrecompleto
FROM votantes v
WHERE v.fechanacimiento = (SELECT MIN(v.fechanacimiento)
FROM votantes v);

SELECT MIN(v.fechanacimiento)
FROM votantes v;


--Mostrar el nombre de los cotantes cuyo telefono acabe en 5
-- % (0,1,*)
SELECT v.nombrecompleto, v.telefono
FROM votantes v
WHERE v.telefono LIKE '%5';

--Mostrar el nombre de los votantes cuyo telefono tenga un 5 como segundo número
-- _ (1)
SELECT v.nombrecompleto, v.telefono
FROM votantes v
WHERE v.telefono LIKE '_5%';

--Mostrar el nombre de los votantes cuyo telefono tenga un 5 como segundo número o un 9 como penúltimo
-- _ (1)
SELECT v.nombrecompleto, v.telefono
FROM votantes v
WHERE v.telefono LIKE '_5%' OR v.telefono LIKE '%9_';

--Mostrar el nombre de los votantes cuyo nombre empiece por J
-- _ (1)
SELECT v.nombrecompleto
FROM votantes v
WHERE v.nombrecompleto LIKE 'J%';

--Votantes que el primer apellido empiece por M contemplando el posible caso de
--votantes con un nombre compuesto por dos nombres

SELECT v.nombrecompleto
FROM votantes v
WHERE v.nombrecompleto LIKE '% % M% %' OR (v.nombrecompleto LIKE '% M% %' 
                                            AND v.nombrecompleto NOT LIKE '% % % %');
                                            
-- Clase 2 de practicas

--producto cartesiano
--Mostrar los votantes ordenados alfabeticamente por nombre y diciendo quien va antes de quien

SELECT v1.nombrecompleto || ' va antes que ' || v2.nombrecompleto "Concatenacion"
FROM votantes v1, votantes v2
where v2.nombrecompleto = 
    (select min(v3.nombrecompleto)
        from votantes v3
        where v3.nombrecompleto > v1.nombrecompleto)
ORDER BY v1.nombrecompleto,v2.nombrecompleto;

--Mostrar los votantes ordenados alfabeticamente por dni y diciendo quien va antes de quien

SELECT v1.dni || ' va antes que ' || v2.dni "Concatenacion"
FROM votantes v1, votantes v2
where v2.dni = 
    (select min(v3.dni)
        from votantes v3
        where v3.dni > v1.dni)
ORDER BY v1.dni,v2.dni;

--Mostrar el nombre de las provincias seguido de la provincia que va tras ella en la base de datos, según id.
SELECT p1.idprovincia,p1.nombre,p2.idprovincia, p2.nombre
FROM provincias p1, provincias p2
WHERE p1.idprovincia+1 = p2.idprovincia;

SELECT p1.nombre || ' va antes de ' || p2.nombre as "EJERCICIO"
FROM provincias p1, provincias p2
WHERE p1.idprovincia+1 = p2.idprovincia;

--Mostrar el nombre de las provincias seguido de la provincia que va tras ella en la base de datos, según id.
--Con la última provincia deberá indicar: "Valencia es la última" ESTO ES PL/SQL

--Mostrar el nombre completo de cada votante seguido de una columna llamada "Mayoría edad" indicando 'Es mayor de edad' o 
--'Es menor de edad'
SELECT v.nombrecompleto, v.fechanacimiento
FROM votantes v;

--Calcular la edad
SELECT v.nombrecompleto, trunc(abs(v.fechanacimiento-sysdate)/365,0) as "Edad"
FROM votantes v;

--Ejemplo DECODE
/*
DECODE (LO QUE EVALUAS,
        XXX , YYYY,
        ZZZ , UUUU,
        DEFAULT
        )
*/
--Mostrar el nombre de cada votante seguido de su situación laboral. En el caso de los Activos, mostrar "Trabajando",
-- en lugar de Parado mostrar "Desempleado" y el resto dejarlo igual.
SELECT v.nombrecompleto, DECODE(v.situacionlaboral,'Parado','Desempleado','Activo','Trabajando',v.situacionlaboral)
FROM votantes v;

SELECT 1
FROM votantes v
WHERE trunc(abs(v.fechanacimiento-sysdate)/365,0)>=18;

SELECT 1
FROM votantes v
WHERE trunc(abs(v.fechanacimiento-sysdate)/365,0)>=18 AND v.dni='30983712';

SELECT v1.nombrecompleto, DECODE((SELECT 1
                                FROM votantes v
                                WHERE trunc(abs(v.fechanacimiento-sysdate)/365,0)>=18 AND v.dni=v1.dni),
                                1,'Mayor de edad',
                                'Menor de edad')
FROM votantes v1;


--Mostrar el nombre de los estudios seguido del número de votantes que disponen de dichos estudios
SELECT v.estudiossuperiores, COUNT(v.dni)
FROM votantes v
GROUP BY v.estudiossuperiores;

--DISTINCT
SELECT DISTINCT(v.estudiossuperiores)
FROM votantes v;

--Mostrar el nombre de los estudios seguido del número de votantes que disponen de dichos estudios siempre
--que haya al menos 4 votantes que tengan ese nivel de estudios
SELECT v.estudiossuperiores, COUNT(v.dni)
FROM votantes v
GROUP BY v.estudiossuperiores
HAVING COUNT(v.dni)>=4;

--Mostrar el nombre de cada localidad, seguido de cada nivel de estudios y por último el número de votantes
--de dicha localidad que tienen dicho nivel de estudios.
SELECT l.nombre, v.estudiossuperiores, count(v.dni)
FROM votantes v, localidades l
WHERE v.localidad=l.idlocalidad
GROUP BY l.nombre,v.estudiossuperiores;



--PL/SQL
DECLARE --opcional
    --bloque de declaracion de variables
BEGIN --obligatorio
    --bloque de programa
END;


--Hola mundo
SET serveroutput on;
BEGIN
    dbms_output.put_line('Hola mundo');
END;

BEGIN
    dbms_output.put_line('Hoy es ' || sysdate);
END;

DECLARE
    fecha date;
BEGIN
    fecha := sysdate;
    dbms_output.put_line('Hoy es ' || fecha);
END;

DECLARE
    fecha date := sysdate;
BEGIN
    dbms_output.put_line('Hoy es ' || fecha);
END;

--PRINCIPALMENTE DEBEIS SABER TRABAJAR CON 3 TIPOS DE VARIABLES
--Imprimir el nombre del votante más viejo
SELECT v.nombrecompleto
FROM votantes v
WHERE v.fechanacimiento = (SELECT MIN(fechanacimiento)
                            FROM votantes);

DECLARE
    nombre votantes.nombrecompleto%type;
BEGIN
    SELECT v.nombrecompleto INTO nombre
    FROM votantes v
    WHERE v.fechanacimiento = (SELECT MIN(fechanacimiento)
                                FROM votantes);
                                
    dbms_output.put_line('El mas viejo se llama ' || nombre);
END;

DECLARE
    nombre votantes.nombrecompleto%type;
    telefono votantes.telefono%type;
BEGIN
    SELECT v.nombrecompleto,v.telefono INTO nombre,telefono
    FROM votantes v
    WHERE v.fechanacimiento = (SELECT MIN(fechanacimiento)
                                FROM votantes);
                                
    dbms_output.put_line('El mas viejo se llama ' || nombre || ' y su telefono es ' || telefono);
END;

DECLARE
    fila votantes%rowtype;
BEGIN
    SELECT * INTO fila
    FROM votantes v
    WHERE v.fechanacimiento = (SELECT MIN(fechanacimiento)
                                FROM votantes);
                                
    dbms_output.put_line('El mas viejo se llama ' || fila.nombrecompleto || ' y su telefono es ' || fila.telefono);
END;

--Mostrar el nombre de cada votante seguido de su situación laboral pero solo para los votantes mayores de edad
DECLARE
    CURSOR c IS SELECT * FROM votantes;
    edad int;
BEGIN
    FOR fila IN c
    LOOP
        edad := trunc(abs(fila.fechanacimiento-sysdate)/365,0);
        IF edad>=18
        THEN
            dbms_output.put_line(fila.nombrecompleto || ' es mayor de edad y tiene como estudios ' || fila.estudiossuperiores);
        END IF;
    END LOOP;
END;

--Mostrar el nombre de cada votante seguido de su situación laboral pero solo para los votantes mayores de edad
--Al final del programa se deben mostrar cuántos votantes hay mayores de edad y cuantos menores de edad
DECLARE
    CURSOR c IS SELECT * FROM votantes;
    edad int;
    mayores int := 0;
    menores int := 0;
BEGIN
    FOR fila IN c
    LOOP
        edad := trunc(abs(fila.fechanacimiento-sysdate)/365,0);
        IF edad>=18
        THEN
            mayores := mayores +1;
            dbms_output.put_line(fila.nombrecompleto || ' es mayor de edad y tiene como estudios ' || fila.estudiossuperiores);
        ELSE
            menores := menores + 1;
        END IF;
    END LOOP;
    dbms_output.put_line('Hay '||mayores||' mayores de edad y '||menores||' menores de edad.');
END;

--Localidad va antes de otra y la última se indica que es la última
set serveroutput on;
DECLARE
    Cursor c IS SELECT * FROM localidades;
    localidad_ant localidades%rowtype;
    localidad_post localidades%rowtype;
    i int := 0;
BEGIN
    FOR fila IN c
    LOOP
        IF i=0
        THEN
            localidad_ant := fila;
            i := i +1;
        ELSE
            localidad_post := fila;
            dbms_output.put_line(localidad_ant.nombre || ' va antes de ' || localidad_post.nombre);
            localidad_ant := localidad_post;
        END IF;
    END LOOP;
    dbms_output.put_line(localidad_ant.nombre || ' va última');
END;




