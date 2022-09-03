/*
Se desea visualizar el n�mero de votantes de cada localidad respecto a su
situaci�n laboral. Muestra el n�mero total de votantes de cada localidad en una
columna. En las otras columnas debe aparecer el n�mero total de votantes de
esa localidad seg�n su situaci�n laboral: parado, activo, estudiante o jubilado
*/
-- Solucion con subconsultas
select l.nombre "Localidad", 
        count(v.dni) "Total votantes",
        (select count(v2.dni) from votantes v2, localidades l2 
            where v2.localidad = l2.idlocalidad and v2.situacionlaboral= 'Parado' and l2.nombre = l.nombre) "Parados",
        (select count(v2.dni) from votantes v2, localidades l2 
            where v2.localidad = l2.idlocalidad and v2.situacionlaboral= 'Activo' and l2.nombre = l.nombre) "Activo",
        (select count(v2.dni) from votantes v2, localidades l2 
            where v2.localidad = l2.idlocalidad and v2.situacionlaboral= 'Estudiante' and l2.nombre = l.nombre) "Estudiante",
        (select count(v2.dni) from votantes v2, localidades l2 
            where v2.localidad = l2.idlocalidad and v2.situacionlaboral= 'Jubilado' and l2.nombre = l.nombre) "Jubilado"
from votantes v, localidades l
where v.localidad = l.idlocalidad 
group by l.nombre;

-- Solucion sin subconsultas
select l.nombre "Localidad", count(v.dni) "Total Votantes",
        Sum(decode(v.situacionlaboral,'Parado',1,0)) "Parados",
        sum(decode(v.situacionlaboral,'Activo',1,0)) "Activos",
        sum(decode(v.situacionlaboral,'Estudiante',1,0)) "Estudiante",
        sum(decode(v.situacionlaboral, 'Jubilado',1,0)) "Jubilado"
from votantes v, localidades l
where v.localidad = l.idlocalidad
group by l.nombre;

/*
Crea una restricci�n para que no se inserten emails inv�lidos. Los emails de los
votantes deben tener antes del @ uno o m�s caracteres. Entre el @ y el . debe
haber uno o m�s caracteres (asumiendo que solo puede haber un . en el email)
y que despu�s del . haya al menos dos caracteres
*/
alter table votantes 
add constraint restriccion_email check(email like '%_%@%_%.%__%' 
        and email not like '%_%@%.%.%');
        
/*
Realizar una consulta que muestre el nombre y el tel�fono de aquellos votantes cuya longitud del primer apellido sea inferior
el pen�ltimo d�gito de su n�mero de tel�fono.
*/

--sacar el pen�ltimo d�gito del n�mero de tel�fono
SELECT  v.telefono, SUBSTR(v.telefono,8,1)
FROM votantes v;

SELECT  v.telefono, SUBSTR(v.telefono,LENGTH(v.telefono)-1,1)
FROM votantes v;

--sacar el primer apellido
SELECT v.nombrecompleto, SUBSTR(v.nombrecompleto,
                                INSTR(v.nombrecompleto,' ')+1,
                                INSTR(v.nombrecompleto,' ',1,2)-(INSTR(v.nombrecompleto,' ')+1))
FROM votantes v;

SELECT SUBSTR(v.nombrecompleto,INSTR(v.nombrecompleto,' ')+1)
FROM votantes v;

SELECT SUBSTR( SUBSTR(v.nombrecompleto,INSTR(v.nombrecompleto,' ')+1),
                1,
                INSTR(SUBSTR(v.nombrecompleto,INSTR(v.nombrecompleto,' ')+1),' '))
FROM votantes v;

--solucion
SELECT v.nombrecompleto, v.telefono
FROM votantes v
WHERE LENGTH(SUBSTR(v.nombrecompleto,INSTR(v.nombrecompleto,' ')+1,INSTR(v.nombrecompleto,' ',1,2)-(INSTR(v.nombrecompleto,' ')+1)))
        <SUBSTR(v.telefono,LENGTH(v.telefono)-1,1);

--------------------------------------------------------------------------------

/*
a)Crear una tabla llamada votantes2 la cual disponga de un campo llamado dni (PK), un campo nombrecompleto
y una situaci�n laboral
*/

-- Eliminacion tabla votantes2
drop table votantes2;

-- Creamos la tabla votantes2
create table votantes2
(dni number(8) primary key,
nombrecompleto varchar2(64),
situacionlaboral varchar2(64));

/*
b)Implementar un procedimiento que copie de la tabla votantes a todos los votantes mayores de edad y que adem�s cumplan
que la longitud de su nombre (primera palabra) sea inferior a la longitud de su situaci�n laboral, en la tabla votantes2.
Se deber� ir imprimiendo los datos de los votantes que se van copiando, por ejemplo:
Lolo Mart�nez Garc�a con DNI 76857463G y situaci�n laboral Activo, ha sido copiado a votantes2.
*/

-- Edad de los votantes
/*
select  trunc(abs(v.fechanacimiento-sysdate)/365) "Edad votante" 
from votantes v;
*/

-- Obtencion del nombre completo,nombre y longitud del nombre de los votantes
/*
select v.nombrecompleto,
    substr(v.nombrecompleto,1,INSTR(v.nombrecompleto, ' ')) "Nombre votante",
    length(substr(v.nombrecompleto,1,INSTR(v.nombrecompleto, ' ')))-1 "Longitud nombre"
from votantes v;
*/

-- Obtener la longitud de la situacion laboral de los votantes
/*
select v.situacionlaboral, length(v.situacionlaboral)
from votantes v;
*/

-- Solucion

set serveroutput on;
declare
cursor c is select v.dni,v.nombrecompleto,v.situacionlaboral,v.fechanacimiento
from votantes v;
begin
for linea in c loop
    -- Comprobamos que los votantes son mayores de edad
    if ((trunc(abs(linea.fechanacimiento-sysdate)/365)) >= 18)
    -- Comprobamos que la longitud del nombre de los votantes sea menor a 
    -- la longitud de su situacion laboral
    and (length(substr(linea.nombrecompleto,1,INSTR(linea.nombrecompleto, ' ')))-1) 
        < (length(linea.situacionlaboral))
    then
    -- Copiamos los datos del votante en la tabla votantes2
    insert into votantes2 values (linea.dni, linea.nombrecompleto,linea.situacionlaboral);
    -- Imprimimos los datos del votante que se va copiando en la tabla votantes2
    dbms_output.put_line(linea.nombrecompleto || ' con dni ' || linea.dni 
        || ' y situacion laboral ' || linea.situacionlaboral || ', ha sido copiado a votantes2.');
    end if;
end loop;
end;

-- Comprobamos si se han copiado los datos en la tabla votantes2
select * from votantes2;

/*
Muestra el nombre de los votantes cuya longitud del primer nombre sea menor
que el ID de la localidad a la que pertenecen y junto a ella muestra la diferencia
de edad (en a�os) entre la persona m�s joven y m�s mayor de su localidad. Cada
columna se llamar� �Nombre� y �Diferencia� respectivamente. [Nota: en caso
de no usar EXTRACT simplemente se restan las fechas y se divide entre 365 y es
igual de v�lido].
*/

-- Longitud del primer nombre de los votantes

select length(substr(v.nombrecompleto,1,instr(v.nombrecompleto,' ')))-1 "Longitud nombre"
from votantes v;

-- Muestra el nombre de los votantes cuya longitud del primer nombre sea menor
 -- que el ID de la localidad a la que pertenecen
select v.nombrecompleto
from votantes v
where (length(substr(v.nombrecompleto,1,instr(v.nombrecompleto,' ')))-1) < v.localidad;

-- Persona mas vieja y su edad
select v.nombrecompleto, trunc((sysdate-v.fechanacimiento)/365) "Edad"
from votantes v
where v.fechanacimiento = (select min(v1.fechanacimiento) from votantes v1);

-- Persona mas joven y su edad
select v.nombrecompleto, trunc((sysdate-v.fechanacimiento)/365) "Edad"
from votantes v
where v.fechanacimiento = (select max(v1.fechanacimiento) from votantes v1);

-- Anadimos a la tabla anterior la edad del mas joven y viejo de la localidad del votante

select v1.nombrecompleto,v1.localidad,
    (select trunc((sysdate-v2.fechanacimiento)/365)
        from votantes v2 
        where v2.fechanacimiento = (select max(v2.fechanacimiento) 
                                    from votantes v2
                                    where v2.localidad = v1.localidad)
    )  "Edadjoven",
    (select trunc((sysdate-v3.fechanacimiento)/365)
        from votantes v3
        where v3.fechanacimiento = (select min(v3.fechanacimiento) 
                                    from votantes v3
                                    where v3.localidad = v1.localidad)
    )  "Edadviejo"
from votantes v1
where (length(substr(v1.nombrecompleto,1,instr(v1.nombrecompleto,' ')))-1) < v1.localidad;

-- Solucion

select v1.nombrecompleto,
    (select trunc((sysdate-v2.fechanacimiento)/365)
        from votantes v2 
        where v2.fechanacimiento = (select min(v2.fechanacimiento) 
                                    from votantes v2
                                    where v2.localidad = v1.localidad)
    ) - (select trunc((sysdate-v3.fechanacimiento)/365)
        from votantes v3
        where v3.fechanacimiento = (select max(v3.fechanacimiento) 
                                    from votantes v3
                                    where v3.localidad = v1.localidad)
    )  "Diferencia"
from votantes v1
where (length(substr(v1.nombrecompleto,1,instr(v1.nombrecompleto,' ')))-1) < v1.localidad;

/*
Se desea visualizar de cada DNI de un votante las veces que ha realizado una
consulta cuya respuesta haya sido �Si� y las veces que ha realizado una consulta
cuya respuesta haya sido �No�, as� como la media de certidumbres totales para
cada votante en las consultas que �ste haya realizado. S�lo se puede usar una
vez: SELECT y FROM.
*/

select v1.dni,
        sum(decode(cd1.respuesta,'Si',1,0)) "Respuestas Si",
        sum(decode(cd1.respuesta,'No',1,0)) "Respuestas No",
        avg(cd1.certidumbre) "Media Certidumbre"
from votantes v1, consultas c1, consultas_datos cd1
where v1.dni = c1.votante and c1.idconsulta = cd1.consulta
group by v1.dni;

/*
[Ejercicio Eliminatorio] �Cu�l fue el partido que los ciudadanos fueron
consultados un mayor n�mero de veces? S�lo se puede usar una vez: SELECT,
FROM, WHERE y JOIN. Resultado: �Partido Socialista Obrero Espa�ol?18�
*/

set serveroutput on
declare
cursor c is select p.nombrecompleto, count(c.consulta) as conteo
            from partidos p, consultas_datos c
            where p.idpartido = c.partido
            group by p.nombrecompleto;
contador integer :=0;
partido partidos.nombrecompleto%type;
begin 
for linea in c loop
    if contador < linea.conteo then
        -- Obtenemos los datos del partido si tiene un mayor numero de consultas
        contador := linea.conteo;
        partido := linea.nombrecompleto;
    end if;
end loop;
dbms_output.put_line(partido || '?' || contador);
end;