/*
Ejercicio 1.
Consulta SQL que muestre, para cada tipo de estudios superiores, cuantos votantes
en total tiene dicho nivel de estudios y, de todos estos, cuantos estan parados,
cuantos activos, cuantos son estudiantes y cuantos estan jubilados.
El orden de las columnas sera el siguiente: estudiossuperiores, total, parado,
activo, estudiante, jubilado.
Ordenar de manera descendente en cuanto al numero de votantes que hay en cada 
categoria de estudios superiores */

select distinct v.estudiossuperiores "estudiossuperiores",
    count(v.dni) "total",
    (select count(dni)
        from votantes
        where situacionlaboral = 'Parado'
        and estudiossuperiores = v.estudiossuperiores
    ) "parado",
    (select count(dni)
        from votantes
        where situacionlaboral = 'Activo'
        and estudiossuperiores = v.estudiossuperiores
    ) "activo",
    (select count(dni)
        from votantes
        where situacionlaboral = 'Estudiante'
        and estudiossuperiores = v.estudiossuperiores
    ) "estudiante",
    (select count(dni)
        from votantes
        where situacionlaboral = 'Jubilado'
        and estudiossuperiores = v.estudiossuperiores
    ) "jubilado"
from votantes v
group by v.estudiossuperiores
order by count(v.estudiossuperiores) desc;

/*
Ejercicio 2
Obtener informacion de aquellos votantes cuyo primer nombre tenga una longitud 
menor que el identificador de su localidad. Se solicita realizar una consulta
SQL que obtenga el nombre de la localidad, el numero de votantes de dicha 
localidad que cumplan el requisito anterior, y la diferencia en años existente 
entre el votante mas viejo y el mas joven de cada localidad.
El nombre de las columnas debe ser: nombreLocalidad, total, diferencia.
El resultado debe ordernarse alfabeticamente por el nombre de la localidad.
*/

select  distinct l.nombre "nombreLocalidad",
        (select count(dni)
            from votantes
            where (length(substr(nombrecompleto,1, INSTR(nombrecompleto, ' ')))-1) < localidad
                and localidad = l.idlocalidad
        ) "total",
        (select trunc((max(fechanacimiento) - min(fechanacimiento))/365)
            from votantes
        where localidad=l.idlocalidad) diferencia
from localidades l
order by l.nombre;

/*
Ejercicio 3
Se desea realizar un estudio sobre aquellos votantes que han realizado un numero
menor de consultas.
Sabiendo que los parados y estudiantes cobran 100 euros, y los activos y jubilados
cobran 1500 euros, se desea organizar la informacion de la siguiente manera:
cada registro correspondera a un nivel de estudios diferente, y para cada nivel
de estudios, se debera mostrar lo que hay que parar en total a los parados,
jubilados, estudiantes y activos de cada nivel de estudios.
Para ello, se desea realizar una consulta SQL.
El nombre de las columnas es el siguiente: estudiossuperiores, sueldosparados,
sueldosactivos,sueldosestudiantes,sueldosjubilados.
*/

select distinct v.estudiossuperiores,
        (select count(situacionlaboral)*100
            from votantes
            where situacionlaboral = 'Parado'
            and estudiossuperiores = v.estudiossuperiores
            and dni in (select votante from consultas
                        group by votante
                        having count(votante ) = ( select min(count(votante))
                                                   from consultas 
                                                   group by votante))
        ) sueldosparados,
        (select count(situacionlaboral)*1500
            from votantes
            where situacionlaboral = 'Activo'
            and estudiossuperiores = v.estudiossuperiores
            and dni in (select votante from consultas
                        group by votante
                        having count(votante ) = ( select min(count(votante))
                                                   from consultas 
                                                   group by votante))
        ) sueldosactivos,
        (select count(situacionlaboral)*100
            from votantes
            where situacionlaboral = 'Estudiante'
            and estudiossuperiores = v.estudiossuperiores
            and dni in (select votante from consultas
                        group by votante
                        having count(votante ) = ( select min(count(votante))
                                                   from consultas 
                                                   group by votante))
        ) sueldosestudiantes,
        (select count(situacionlaboral)*1500
            from votantes
            where situacionlaboral = 'Jubilado'
            and estudiossuperiores = v.estudiossuperiores
            and dni in (select votante from consultas
                        group by votante
                        having count(votante ) = ( select min(count(votante))
                                                   from consultas 
                                                   group by votante))
        ) sueldosjubilados
from votantes v;

/*
Ejercicio 4
Crea un procedimiento PL/SQL que inserte la informacion necesaria en la tabla 
jovenes a partir de la tabla votantes. Un votante se introducira en la nueva
tabla unicamente si nacio con posterioridad al 01/01/90.
El campo sueldo se pondra en base a su situacion laboral siendo 500 para parados,
1000 para estudiantes, 1500 para personas activas, 2000 si son jubilados.
El procedimiento deberá mostrar por pantalla cuantos votantes se han insertado
de cada tipo, cuanto dinero se necesita cada mes para pagar las nominas y cual
es el salario medio de los votantes introducidos
*/

set serveroutput on
declare
    cursor c is select v.situacionlaboral from votantes v
        where v.fechanacimiento > '01/01/90';
    numParados NUMBER := 0;
    sueldoParados NUMBER := 0;
    sueldoTotal NUMBER := 0;
    totalPersonas NUMBER := 0;
    sueldoMedio float := 0.0;
    numActivos NUMBER := 0;
    sueldoActivos NUMBER := 0;
    numEstudiantes NUMBER := 0;
    sueldoEstudiantes NUMBER := 0;
    numJubilados NUMBER := 0;
    salarioJubilados NUMBER := 0;
begin
    for linea in c loop
        -- Obtenemos el numero de parados
        if linea.situacionlaboral = 'Parado' then
            numparados := numparados + 1;
            -- Calculamos el sueldo de los parados
            sueldoParados := sueldoParados + 500;
        -- Obtenemos el numero de estudiantes
        elsif linea.situacionlaboral = 'Estudiante' then
            numEstudiantes := numEstudiantes + 1;
            -- Calculamos el sueldo de los estudiantes
            sueldoEstudiantes := sueldoEstudiantes + 1000;
        -- Obtenemos el numero de activos
        elsif linea.situacionlaboral = 'Activo' then
            numActivos := numActivos + 1;
            -- Calculamos el sueldo de las personas activas
            sueldoActivos := sueldoActivos + 1500;
        -- Obtenemos el numero de personas jubilados
        else
            numJubilados := numJubilados + 1;
            -- Obtenemos el salario de las personas jubiladas
            salarioJubilados := salarioJubilados + 2000;
        end if;
    end loop;
    -- Calculamos el sueldo total
    sueldoTotal := sueldoParados + sueldoActivos + sueldoEstudiantes + salarioJubilados;
    -- Calculamos el total de personas
    totalPersonas := numparados + numActivos + numEstudiantes + numJubilados;
    -- Calculamos el salario medio
    sueldoMedio := round(sueldoTotal/totalPersonas);
    -- Mostramos la informacion
    dbms_output.put_line('Se insertan ' || numParados || ' personas paradas, '
        || numEstudiantes || ' personas estudiantes, '
        || numActivos || ' personas activas, '
        || numJubilados || ' personas jubiladas.');
    dbms_output.put_line('Se necesitara ' || sueldoTotal || ' euros y el salario' 
     || ' medio sera de ' || sueldoMedio || ' euros.');
end;


