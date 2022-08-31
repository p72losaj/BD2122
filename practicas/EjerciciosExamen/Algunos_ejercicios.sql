/*
a)Crear una tabla llamada votantes2 la cual disponga de un campo llamado dni (PK), un campo nombrecompleto
y una situación laboral.
*/
CREATE TABLE votantes2
(
    DNI NUMBER(8) PRIMARY KEY,
    NOMBRECOMPLETO VARCHAR2(64),
    SITUACIONLABORAL VARCHAR2(16)
);

/*
b)Implementar un procedimiento que copie de la tabla votantes a todos los votantes mayores de edad y que además cumplan
que la longitud de su nombre (primera palabra) sea inferior a la longitud de su situación laboral, en la tabla votantes2.
Se deberá ir imprimiendo los datos de los votantes que se van copiando, por ejemplo:
Lolo Martínez García con DNI 76857463G y situación laboral Activo, ha sido copiado a votantes2.
*/
set serveroutput on;
DECLARE 
    CURSOR c IS SELECT * FROM votantes;
    edad int;
    longitud_nombre int;
    longitud_situacionlaboral int;
BEGIN
    FOR fila IN c
    LOOP
        edad := (sysdate-fila.fechanacimiento)/365;
        
        longitud_nombre := LENGTH(SUBSTR(fila.nombrecompleto,1,INSTR(fila.nombrecompleto, ' ')));
        
        longitud_situacionlaboral := LENGTH(fila.situacionlaboral);
        
        IF edad>=18 AND longitud_nombre<longitud_situacionlaboral
        THEN
            INSERT INTO votantes2 (dni,nombrecompleto,situacionlaboral)
            VALUES (fila.dni,fila.nombrecompleto,fila.situacionlaboral);
            
            dbms_output.put_line(fila.nombrecompleto || ' con DNI ' || fila.dni || ' y situación laboral ' || fila.situacionlaboral
                                || ', ha sido copiado a votantes2.');
        END IF;
    END LOOP;
END;


/*
Muestra el nombre de los votantes cuya longitud del primer nombre sea menor
que el ID de la localidad a la que pertenecen y junto a ella muestra la diferencia
de edad (en años) entre la persona más joven y más mayor de su localidad. Cada
columna se llamará “Nombre” y “Diferencia” respectivamente. [Nota: en caso
de no usar EXTRACT simplemente se restan las fechas y se divide entre 365 y es
igual de válido].
*/

select v.nombrecompleto as nombre, 
    (select distinct trunc(abs(sysdate-min(va.fechanacimiento))/360-abs(sysdate-max(va.fechanacimiento))/360)
    from votantes va 
    where va.localidad=v.localidad) as diferencia
from votantes v
where length(substr(v.nombrecompleto,1,instr(v.nombrecompleto,' ')-1))<v.localidad;

/*
Se desea visualizar de cada DNI de un votante las veces que ha realizado una
consulta cuya respuesta haya sido “Si” y las veces que ha realizado una consulta
cuya respuesta haya sido “No”, así como la media de certidumbres totales para
cada votante en las consultas que éste haya realizado. Sólo se puede usar una
vez: SELECT y FROM.
*/

set serveroutput on;

declare

cursor c is select c.votante, count (*) total, 

                sum(decode(cd.respuesta, 'Si', 1,0))Si,
    
                sum(decode(cd.respuesta, 'No', 1,0))No,
    
                round(sum(cd.certidumbre)/count (*),2) media

            from consultas c, consultas_datos cd

            where c.idconsulta = cd.consulta

            group by c.votante;

begin 

    for fila in c loop

        dbms_output.put_line (fila.votante || ' ha realizado '|| fila.Si || ' con respuesta Si y '|| fila.No ||' con respuesta No' || ' y una media de 0' || fila.media);

    end loop;

end;

/*
[Ejercicio Eliminatorio] ¿Cuál fue el partido que los ciudadanos fueron
consultados un mayor número de veces? Sólo se puede usar una vez: SELECT,
FROM, WHERE y JOIN. Resultado: “Partido Socialista Obrero Español?18”
*/

set serveroutput on;

declare

    cursor c is select p.nombrecompleto, count(cd.partido) conteo
    
                from partidos p, consultas_datos cd
    
                where p.idpartido = cd.partido
    
                group by p.nombrecompleto order by count(cd.partido)desc;
    
    maximo int := 0;
    
    nombre_partido partidos.nombrecompleto%type;



begin 

    for fila in c loop

        if fila.conteo > maximo  then

            maximo := fila.conteo;
    
            nombre_partido := fila.nombrecompleto ;

        end if;

    end loop;

    dbms_output.put_line(nombre_partido || '-->' || maximo);

end;