/* EJERCICIOS ANO 2021-2022 */

/* Ejercicios sql */

/* 
EJERCICIOS PRACTICA 1
*/

/* 
EJERCICIO 2
LISTAR EL NOMBRE DE TODAS LAS TABLAS ACTUALMENTE CREADAS
*/

select table_name from user_tables;

/* 
EJERCICIO 3
OBTENER DESCRIPCIONES DE LAS DIFERENTES TABLAS CREADAS MEDIANTE EL SCRIPT 
*/

describe consultas;
describe consultas_datos;
describe eventos;
describe eventos_resultados;
describe localidades;
describe partidos;
describe votantes;

/* 
EJERCICIO 4
BORRAR LAS TABLAS GENERADAS POR EL SCRIPT
*/

drop table votantes cascade constraints;
drop table consultas cascade constraints;
drop table consultas_datos;
drop table eventos cascade constraints;
drop table eventos_resultados;
drop table localidades;
drop table partidos;
drop table provincias;

/* 
EJERCICIO 5
REALIZAR LA SIGUIENTE INSERCION EN LA TABLA VOTANTES:
dni: 30653845
nombreCompleto: Maria Gonzalez Ramirez
estudiosSuperiores: Doctorado
situacionLaboral: Activo
email: goram@telefonica.es
localidad: 1
fechaNacimiento: 21 de Agosto de 1989
telefono: 677544822
*/

insert into votantes 
values ('30653845','Maria Gonzalez Ramirez','Doctorado','Activo'
,'goram@telefonica.es',1,'21/8/89','677544822');

/*
EJERCICIO 6
Comprobar que todos los campos han sido insertados correctamente
*/

select * from votantes where dni ='30653845' ;

/*
EJERCICIO 7
Realizar el borrado de la inserci�n que acabamos de hacer sobre la tabla votantes
*/

delete from votantes where dni = '30653845';
select * from votantes where dni ='30653845' ;

/*
EJERCICIO 9
Mostrar el nombre de los eventos que tienen lugar y que se encuentran en la 
tabla eventos, as� como su tipo ('Europeas', 'Generales', 'Autonomicas', 
'Locales', 'Otras') y la fecha en la que se desarrollar�n. �nicamente se deber� 
mostrar el nombre del evento, el tipo y la fecha del mismo. 
*/

select nombre,tipo,fecha from eventos;

/*
EJERCICIO 10
Realizar la concatenaci�n del nombre del evento y su tipo, de manera que s�lo 
se mostrar� lo que se muestra m�s abajo. El nombre de la columna ser� 
�Convocatoria�.
*/

select nombre || ' es de tipo ' || tipo as Convocatoria from eventos;

/* EJERCICIOS PRACTICA 2 */

/* 
EJERCICIO 1
Obtener el nombre de todos los votantes cuyo segundo apellido acaba en �n�.
*/

select nombrecompleto from votantes where nombrecompleto like '% % %n';

/*
EJERCICIO 2
Obtener el DNI de todos los votantes que tengan al menos tres 5s en su DNI.
*/

select dni from votantes where dni like '%5%5%5%';

/*
EJERCICIO 3
Obtener el nombre de aquellos votantes cuya fecha de nacimiento sea 
posterior al 1 de Enero de 1990
*/

select nombrecompleto from votantes where fechanacimiento > '1/1/90';

/*
EJERCICIO 4
Obtener el nombre del votante y el nombre de la localidad de aquellos 
votantes que han ejercido el voto en una localidad que tiene m�s de 300000 
habitantes.
*/

select v.nombrecompleto,l.nombre from votantes v, localidades l 
where v.localidad = l.idlocalidad and l.numerohabitantes > 300000;

/*
EJERCICIO 5
Obtener el nombre del votante y el nombre de la comunidad de aquellos 
votantes que han ejercido el voto en una localidad que tiene m�s de 300000 
habitantes.
*/

select v.nombrecompleto,p.comunidad from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad and l.provincia = p.idprovincia 
and l.numerohabitantes > 300000;

/*
EJERCICIO 6
Obtener el identificador del partido y el n�mero de datos o consultas que se 
tiene para dicho partido de entre todos los partidos sobre los que se han 
realizado alguna consulta.
*/

select p.idpartido as PARTIDO, COUNT(c.idconsulta) as conteo 
from partidos p, consultas_datos cd, consultas c
where p.idpartido = cd.partido and cd.consulta = c.idconsulta
group by p.idpartido;

/*
EJERCICIO 9
Mostrar el nombre del partido y el n�mero de consultas realizadas para 
aquellos partidos que aparecen en m�s de 10 consultas
*/

select p.nombrecompleto, count(c.idconsulta) as Conteo 
from partidos p, consultas c, consultas_datos cd
where p.idpartido = cd.partido and c.idconsulta = cd.consulta
group by p.nombrecompleto
having count(c.idconsulta) > 10;

/*
EJERCICIO 10
Mostrar el nombre de los partidos y el n�mero de consultas realizadas para 
cada partido considerando s�lo aquellas consultas en las que el encuestado ha 
contestado afirmativamente a votar a dicho partido y con una certidumbre por 
encima del 80%, es decir, 0.8
*/

select p.nombrecompleto, count(c.idconsulta) as conteo 
from partidos p, consultas c, consultas_datos cd
where p.idpartido = cd.partido and cd.consulta = c.idconsulta
and cd.certidumbre > 0.8 and cd.respuesta = 'Si'
group by p.nombrecompleto;

/* PRACTICA 3*/

/* 
EJERCICIO 1
Obtener el nombre de todos los votantes cuyo DNI acaba igual que el 
identificador de su localidad m�s 1
*/

select nombrecompleto from votantes
where SUBSTR(dni,length(DNI),length(DNI)) = localidad+1;

/*
EJERCICIO 2
Obtener el nombre de todos los votantes as� como el nombre de la localidad en 
la que viven teniendo en cuenta que todos los que sean de la provincia de 
C�rdoba (identificador de localidad 1, 2 y 3) se han mudado a Madrid.
*/

select v.nombrecompleto, 
decode(v.localidad,1,'Madrid',2,'Madrid',3,'Madrid',l.nombre) as NOMBRE 
from votantes v,localidades l
where v.localidad = l.idlocalidad;

/*
EJERCICIO 3
Mostrar	las	siglas	de	aquellos	partidos que	han	participado	un	mayor	
n�mero	de	veces	en	eventos.
*/

select p.siglas from partidos p, eventos_resultados e
where p.idpartido = e.partido
group by p.siglas
having COUNT(e.evento) = 
(
    select MAX(COUNT(e.evento)) from eventos_resultados e, partidos p
    where p.idpartido = e.partido
    group by p.idpartido
);

/*
EJERCICIO 4
Obtener el DNI del segundo votante de m�s edad de entre todos los votantes 
existentes en la base de datos.
*/

select dni from votantes
where fechanacimiento = (
    select min(fechanacimiento) from votantes where fechanacimiento > 
    (select min(fechanacimiento) from votantes)
);

/*
EJERCICIO 5
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a n�mero de participaciones
*/

select v.dni, count(c.idconsulta) as "COUNT(VOTANTE)" 
from votantes v, consultas c
where v.dni = c.votante
group by v.dni
order by count(c.idconsulta) desc;

/*
EJERCICIO 6
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a n�mero de participaciones. S�lo se mostrar�n aquellos votantes 
cuya participaci�n ha sido mayor que la media de participaciones de todos los 
votantes
*/

select v.dni, count(c.idconsulta) as "COUNT(VOTANTE)" 
from votantes v, consultas c
where v.dni = c.votante
group by v.dni
having count(c.idconsulta) >
(
    select avg(count(c.idconsulta)) from votantes v, consultas c
    where v.dni = c.votante
    group by v.dni
)
order by count(c.idconsulta) desc;

/*
EJERCICIO 7
Obtener el nombre de los votantes cuya participaci�n ha sido mayor que la 
media de participaciones de todos los votantes.
*/

select v.nombrecompleto from votantes v, consultas c
where v.dni = c.votante
group by v.nombrecompleto
having count(c.idconsulta) > 
(
    select avg(count(c.evento)) from consultas c, votantes v
    where v.dni = c.votante
    group by v.dni
);

/*
EJERCICIO 8
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a n�mero de participaciones y no mostrando los resultados del 
segundo votante de m�s edad
*/

select v.dni, count(c.evento) as "COUNT(VOTANTE)"
from votantes v, consultas c
where v.dni = c.votante
and dni not like 
(select dni from votantes where fechanacimiento = 
    (select min(fechanacimiento) from votantes v where fechanacimiento >
    (select min(fechanacimiento) from votantes v))
)
group by v.dni
order by count(c.evento) desc;

/* AMPLIACION PRACTICA 3 */

/* 
EJERCICIO 1
Mostrar el nombre de pila (sin apellidos), nombre de localidad y nombre de comunidad de
los votantes pertenecientes a las localidades 1, 3 � 9. Personaliza el t�tulo de dichas
columnas.
*/

select SUBSTR(v.nombrecompleto,1,INSTR(v.nombrecompleto,' ')) as NOMBRE_VOTANTE,
l.nombre as NOMBRE_LOCALIDAD, p.comunidad as NOMBRE_COMUNIDAD
from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad
and l.provincia = p.idprovincia
and v.localidad in (1,3,9);

/*
EJERCICIO 2
Ordenar las localidades en base a su identificador de localidad
*/

select a.nombre || ' va antes que ' || b.nombre as ORDENACION
from localidades a, localidades b
where b.idlocalidad = a.idlocalidad + 1;

/*
EJERCICIO 3
Obtener el nombre de las localidades que tienen un n�mero de habitantes mayor que la
localidad del votante que es el segundo votante de m�s edad de entre todos los votantes
existentes en la base de datos
*/

select distinct l.nombre from localidades l, votantes v
where v.localidad = l.idlocalidad 
and l.numerohabitantes > 
(
    select l.numerohabitantes from localidades l, votantes v 
    where l.idlocalidad = v.localidad
    and v.fechanacimiento = (
        select min(fechanacimiento) from votantes 
        where fechanacimiento > (select min(fechanacimiento) from votantes)
    )
);

/*
EJERCICIO 4
Mostrar el nombre completo de los votantes, n�mero de localidad a la que pertenecen y
�mayoria edad� (mostrar�: 'mayor edad' y 'menor edad' en lugar de su fecha de nacimiento
en funci�n de si son mayores de edad o no). Los resultados de esta consulta s�lo recoger�n a
los votantes de las localidades 2, 4 y 8 y quedar�n ordenados por la nueva columna de
�mayoria edad�
*/

select nombrecompleto, localidad, 
decode (SIGN (18-(sysdate-fechanacimiento)/365),-1,'Mayor edad',0,'Mayor edad',
'Menor edad') as "mayoria edad"
from votantes
where localidad in (2,4,8)
order by "mayoria edad";

/*
EJERCICIO 5
Muestra el nombre de las localidades, su n�mero de habitantes y el nombre de la comunidad
a la que pertenecen. Se recoger�n s�lo aquellas localidades cuyo n�mero de provincia sea el
1, 2, o 3 y que tengan mayor n�mero de habitantes que alguna de las localidades de la
provincia n�mero 4.
*/

select l.nombre, l.numerohabitantes,p.comunidad 
from localidades l, provincias p
where l.provincia = p.idprovincia and l.provincia in (1,2,3)
and l.numerohabitantes > 
ANY (select numerohabitantes from localidades where provincia = 4);

/*
EJERCICIO 6
Obtener el nombre de los votantes cuya participaci�n ha sido menor que la media 
de participaciones de todos los votantes a pesar de encontrarse en situaci�n 
laboral de 'Activo'.
*/

select v.nombrecompleto from votantes v, consultas c
where v.dni = c.votante and v.situacionlaboral = 'Activo'
group by v.nombrecompleto
having count(c.evento) <
(select AVG(c.evento) from votantes v, consultas c where c.votante = v.dni);

/*
EJERCICIO 7
Mostrar el nombre de las localidades ordenadas de mayor a menor nivel de
estudiosSuperiores medio de sus votantes.
*/

select l.nombre, AVG(
decode(v.estudiossuperiores,'Ninguno',0,'Basicos',1,'Superiores',2,'Doctorado',3,v.estudiossuperiores)
) as ESTUDIOS
from localidades l, votantes v
where v.localidad = l.idlocalidad
group by l.nombre
order by ESTUDIOS desc;

/*
EJERCICIO 8
Mostrar aquellas localidades cuyos votantes tienen un nivel de estudiosSuperiores
medio mayor que todas las medias de estudiosSuperiores de las provincias
*/

select l.nombre from votantes v, localidades l
where v.localidad = l.idlocalidad 
group by l.nombre
HAVING AVG(
decode ( v.estudiossuperiores, 'Ninguno',0,'Basicos',1,'Superiores',2,'Doctorado',3, v.estudiossuperiores)
) > ALL(
    select AVG(
        decode (v.estudiossuperiores, 'Ninguno',0,'Basicos',1,'Superiores',2,'Doctorado',3, v.estudiossuperiores))
        from votantes v, localidades l, provincias p
        where v.localidad = l.idlocalidad 
        and l.provincia = p.idprovincia
);

/* EJERCICIOS PL/SQL */

/* PRACTICA 4*/

/*
EJERCICIO 1
Muestre por pantalla el clasico �Hola mundo�, pero adema?s muestre la fecha 
actual.
*/

set serveroutput on
declare
begin
dbms_output.put_line('Hola mundo. Hoy es el dia: ' || sysdate);
end;

/*
EJERCICIO 2
Mostrar el nombre completo y el correo electr�nico del votante con DNI 
30983712, mostrando la informaci�n como sigue:
*/

set serveroutput on
declare
nombre votantes.nombrecompleto%type;
correo votantes.email%type;
begin
select nombrecompleto,email into nombre,correo from votantes where dni = 30983712;
dbms_output.put_line(nombre || ' con correo: ' || correo);
end;

/*
EJERCICIO 3
Mostrar s�lo el nombre (primer nombre, sin apellidos) y el correo electr�nico 
del votante con DNI 30983712
*/
set serveroutput on
declare
nombre votantes.nombrecompleto%type;
correo votantes.email%type;
begin
select substr(nombrecompleto,1,INSTR(nombrecompleto, ' ')),email into nombre,correo from votantes where dni = 30983712;
dbms_output.put_line(nombre || ' con correo: ' || correo);
end;

/*
Ejercicio 5
El votante con DNI 30983712 desea que lo llamen Pepe en lugar de Jose. Sin 
embargo, este cambio no puede realizarse oficialmente en la base de datos 
puesto que no es su nombre real. Crear un script en PL/SQL para que se 
muestre el nombre completo de dicho votante pero apareciendo Pepe en 
lugar de Jose.
*/
set serveroutput on
declare
apellidos votantes.nombrecompleto%type;
begin
select substr(nombrecompleto,instr(nombrecompleto,' '), length(nombrecompleto))
into apellidos from votantes where dni = 30983712;
dbms_output.put_line('Pepe' || apellidos);
end;

/*
Ejercicio 5
Muestre el nombre completo y el DNI del votante mas longevo
*/

set serveroutput on
declare
nombre votantes.nombrecompleto%type;
dni votantes.nombrecompleto%type;
begin
select nombrecompleto,dni into nombre,dni 
from votantes where fechanacimiento = (select min(fechanacimiento) from votantes);
dbms_output.put_line('El senor ' || nombre || ' con dni ' || dni || ' es el votante mas longevo');
end;

/*
Ejercicio 6
Se ha decidido que a los votantes m�s j�venes y m�s viejos se les va a hacer una 
cuenta de la Universidad de C�rdoba, guardando el nombre de usuario que ten�an ya 
en sus cuentas originales. Se necesita mostrar por pantalla la informaci�n, c�mo 
quedar�a, sin modificar la base de datos
*/

set serveroutput on
declare
nombre1 votantes.nombrecompleto%type;
correo1 votantes.email%type;
nombre2 votantes.nombrecompleto%type;
correo2 votantes.email%type;
begin 
select nombrecompleto,substr(email,1,instr(email, '@')) into nombre1,correo1 
from votantes where fechanacimiento = (select min(fechanacimiento) from votantes);
dbms_output.put_line(nombre1 || '-- Email: ' || correo1 || 'uco.es');
select nombrecompleto,substr(email,1,instr(email, '@')) into nombre2,correo2
from votantes where fechanacimiento = (select max(fechanacimiento) from votantes);
dbms_output.put_line(nombre2 || '-- Email: ' || correo2 || 'uco.es');
end;

/*
Ejercicio 7
Los dos votantes m�s j�venes se han enamorado y han tenido un beb�, que se llama 
Juan. Mostrar el nombre y apellidos del beb� considerando que el votante m�s joven 
pondr� el segundo apellido y el siguiente m�s joven pondr� el primer apellido
*/

set serveroutput on
declare
apellido2 votantes.nombrecompleto%type;
apellido1 votantes.nombrecompleto%type;
begin
select substr(nombrecompleto,instr(nombrecompleto,' '),8) into apellido2
from votantes where fechanacimiento = (select max(fechanacimiento) from votantes);
select substr(nombrecompleto,instr(nombrecompleto,' '),5) into apellido1
from votantes where fechanacimiento = (select max(fechanacimiento) from votantes
where fechanacimiento < (select max(fechanacimiento) from votantes));
dbms_output.put_line('El hijo se llama Juan ' || apellido1 || apellido2);
end;

/*
Ejercicio 8
Sin utilizar ninguna subconsulta, crea un procedimiento PL/SQL que sume la cantidad 
de habitantes que tienen las dos localidades con menor identificador. A continuaci�n, 
obtenga cuantas localidades existen con un numero de habitantes mayor que la suma 
de las dos localidades anteriores
*/

set serveroutput on
declare
id1 localidades.idlocalidad%type;
nhabitantes1 INTEGER:= 0;
nhabitantes2 INTEGER := 0;
totalhabitantes INTEGER:= 0;
nciudades INTEGER:=0;
begin
select idlocalidad,numerohabitantes into id1,nhabitantes1 from localidades 
where idlocalidad = (select min(idlocalidad) from localidades);
select numerohabitantes into nhabitantes2 from localidades 
where idlocalidad = id1+1;
totalhabitantes := nhabitantes1 + nhabitantes2;
select count(idlocalidad) into nciudades from localidades where numerohabitantes > totalhabitantes;
dbms_output.put_line('Hay ' || nciudades || ' con mas de '|| totalhabitantes 
|| ' habitantes, que es la suma de las 2 localidades con IDs mas pequenos' );
end;

/* PRACTICA 5 */

/*
Ejercicio 1
Mediante bucle FOR para cursores, obtener el nombre de todos los votantes 
cuyo DNI acaba igual que el identificador de su localidad m�s 1
*/

set serveroutput on
declare 
cursor c is select nombrecompleto from votantes where substr(dni,length(dni),length(dni)) = localidad + 1;
numero INTEGER:= 0;
begin
for num_row in c loop
numero := numero+1;
dbms_output.put_line(num_row.nombrecompleto);
end loop;
dbms_output.put_line('Hay un total de ' || numero || ' votantes');
end;

/*
Ejercicio 2
Mediante un cursor y el bucle LOOP, obtener el nombre de todos los votantes 
cuyo DNI acaba igual que el identificador de su localidad m�s 1
*/

set serveroutput on
declare
cursor c is select nombrecompleto from votantes where substr(dni,length(dni),length(dni)) = localidad+1;
fila c%rowtype;
numero INTEGER:=0;
begin
open c;
loop
FETCH c into fila;
exit when c%notfound;
numero := numero + 1;
dbms_output.put_line(fila.nombrecompleto);
end loop;
dbms_output.put_line('Hay un total de ' || numero || ' votantes');
end;

/*
Ejercicio 3
Mediante un cursor y el bucle WHILE, obtener el nombre de todos los votantes 
cuyo DNI acaba igual que el identificador de su localidad m�s 1.
*/

set serveroutput on
declare
cursor c is select nombrecompleto from votantes 
where substr(dni, length(dni),length(dni)) = localidad+1;
numero INTEGER:=0;
fila c%rowtype;
begin
open c;
fetch c into fila;
while c%found loop
numero := numero +1;
dbms_output.put_line(fila.nombrecompleto);
fetch c into fila;
end loop;
dbms_output.put_line('Hay un total de '|| numero || ' votantes');
end;

/*
Ejercicio 4
Obtener el nombre de todos los votantes as� como el nombre de la localidad en 
la que viven teniendo en cuenta que todos los que sean de la provincia de 
C�rdoba (identificador de localidad 1, 2 y 3) se han mudado a Madrid.
*/

set serveroutput on
declare
cursor c is select v.nombrecompleto,l.nombre,l.idlocalidad from votantes v, localidades l
where v.localidad = l.idlocalidad;
numero INTEGER:=0;
begin 
for linea in c loop
if linea.idlocalidad in (1,2,3) then
    dbms_output.put_line(linea.nombrecompleto || ' es de Madrid');
    numero:=numero+1;
    else dbms_output.put_line(linea.nombrecompleto || ' es de '|| linea.nombre);
end if;
if linea.nombre = 'Madrid' then numero := numero+1;
end if;
end loop;
dbms_output.put_line('Hay un total de '||numero||' votantes de Madrid');
end;

/*
Ejercicio 5
Mostrar los DNIs de los votantes en orden, indicando va antes que otro. El 
�ltimo DNI (el m�s peque�o) se indicar� que es el m�s peque�o
*/

set serveroutput on
declare
cursor c is select dni from votantes order by dni desc;
dni1 votantes.dni%type;
dni2 votantes.dni%type;
begin
for linea in c loop
dni1 := linea.dni;
if dni2 > dni1 then
    dbms_output.put_line(dni2 || ' va antes que ' || dni1);
end if;
dni2 := dni1;
end loop;
dbms_output.put_line(dni2 || ' es el menor');
end;

/*
Ejercicio 6
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a n�mero de participaciones. S�lo se mostrar�n aquellos votantes 
cuya participaci�n ha sido mayor que la media de participaciones de todos los 
votantes
*/

set serveroutput on
declare
cursor c is select v.dni, count(c.idconsulta) as conteo from votantes v, consultas c 
where v.dni = c.votante
group by c.votante
having count(c.idconsulta) > (
    select AVG(count(c.idconsulta)) from consultas c, votantes v
    where v.dni = c.votante
    group by v.dni
)
order by count(c.idconsulta)  desc;
begin
for linea in c loop
dbms_output.put_line(linea.dni || 'ha participado ' || linea.conteo || ' veces');
end loop;
end;

/*
Ejercicio 7
Crear una nueva tabla, llamada �votantesAntiguos�, que incluya la siguiente. 
informacion de aquellos votantes que nacieron antes de 1980: dni, 
nombrecompleto, email, fechanacimiento. Devolver por pantalla el nombre de 
cada uno de los votantes insertados asi como el total de votantes insertados en 
dicha tabla. Dicha tabla nueva debe tener un nuevo campo �Sueldo� de tipo 
numerico que incluira el sueldo de los votantes. Dicho sueldo sera de 1500 
euros y se aplica solo a aquellos que esten en activo. El resto tendra un sueldo 
de 0 euros.
*/

drop table votantesAntiguos;

create table votantesAntiguos
(dni varchar2(64) not null primary key,
 nombrecompleto varchar2(64) not null,
 email varchar2(64) not null,
 fechanacimiento date not null,
 Sueldo INTEGER not null);
 
set serveroutput on
declare
contador NUMBER:= 0;
cursor c is select dni,nombrecompleto,email,fechanacimiento,situacionlaboral from votantes where fechanacimiento < '01/01/80';
BEGIN
for linea in c loop
if(linea.situacionlaboral = 'Activo') then
insert into votantesantiguos values (linea.dni,linea.nombrecompleto,linea.email,linea.fechanacimiento,1500);
else insert into votantesantiguos values (linea.dni,linea.nombrecompleto,linea.email,linea.fechanacimiento,0);
end if;
DBMS_OUTPUT.PUT_LINE('Se han insertado a ' || linea.nombrecompleto);
end loop;
select count(dni) into contador from votantesAntiguos;
dbms_output.put_line('Se han insertado un total de ' || contador || ' votantes');
END;
 
/*
Ejercicio 8
- Considerando la tabla �votantesAntiguos� creada en el ejercicio anterior, 
mostrar �nicamente el nombre (sin apellidos) de cada uno de los votantes que 
hay en esa tabla. Para cada uno, mostrar el nombre (sin apellidos) y el numero 
de letras que tiene dicho nombre. Por �ltimo, indicar el numero de letras 
totales que tienen los nombres (sin apellidos) de los votantes de esa tabla.
*/

set serveroutput on
declare
numero integer:=0;
cursor c is select substr(nombrecompleto,1,instr(nombrecompleto,' ')) as nombre,
length(substr(nombrecompleto,1,instr(nombrecompleto,' ')))-1 as longitudNombre 
from votantesAntiguos;
begin
for linea in c loop
dbms_output.put_line(linea.nombre || ' tiene ' || linea.longitudNombre || ' letras');
numero := numero + linea.longitudNombre;
end loop;
dbms_output.put_line('En total hay ' || numero || ' letras');
end;
 
/*
Ejercicio 9
Considerando la tabla �votantesAntiguos� creada en el ejercicio anterior, 
ordenar los votantes de dicha tabla seg�n fecha de nacimiento (ascendente). 
Recorrer cada votante y calcular el numero de letras que tiene su nombre (sin 
apellidos), mostrando, adem�s, los votantes m�s j�venes que �l que tengan 
menos letras que �l
*/
set serveroutput on
declare
contador integer:=0;
cursor c is select nombrecompleto,fechanacimiento, length(substr(nombrecompleto,1,instr(nombrecompleto,' '))) 
as letras from votantesAntiguos order by fechanacimiento asc;
cursor c2 is select nombrecompleto,fechanacimiento, length(substr(nombrecompleto,1,instr(nombrecompleto,' '))) 
as letras from votantesAntiguos order by fechanacimiento asc;
begin
for linea in c loop
dbms_output.put_line(linea.nombrecompleto || ' tienes mas letras que los siguientes jovenes: ');
for linea2 in c2 loop
    if (linea.fechanacimiento < linea2.fechanacimiento) and (linea.letras > linea2.letras) then
        dbms_output.put_line(linea2.nombrecompleto);
        contador:= contador+1;
    end if;
end loop;
if contador=0 then dbms_output.put_line('Nadie cumple esta condicion');
end if;
contador:=0;
dbms_output.put_line(' ');
end loop;
end;

/* TRIGGERS, ASSERTION Y CONSTRAINTS */

/* Practica 6 */

/*
Ejercicio 1
Cree una tabla denominada audit_table para almacenar el registro de ejecuciones de los triggers durante la practica.
Debera tener dos columnas, �datos� y �tabla�, en el campo datos
almacenara detalles del cambio y el campo tabla almacenara el nombre de la tabla donde ocurrio el cambio.
*/

drop table audit_table;

create table audit_table (datos varchar2(100 bytes),tabla varchar2(100 bytes));