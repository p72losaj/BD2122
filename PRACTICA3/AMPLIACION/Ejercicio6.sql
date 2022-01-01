/**
Ejercicio 6: Obtener el nombre de los votantes cuya participación ha sido menor 
que la media de participaciones de todos los votantes a pesar de encontrarse en 
situación laboral de 'Activo'.
*/

select v.nombrecompleto
from votantes v, consultas c
where c.votante = v.dni and v.situacionlaboral='Activo'
group by v.nombrecompleto
HAVING COUNT(c.evento) < (
select AVG(c.evento) from votantes v, consultas c where c.votante = v.dni
);

/** Obtener el nombre de los votantes con situacion laboral activo */

/**
select v.nombrecompleto from votantes v where v.situacionlaboral='Activo';
*/

/** Obtenemos la media de participaciones de todos los votantes */
select v.nombrecompleto, AVG(c.evento), COUNT(c.evento)
from votantes v, consultas c
where c.votante = v.dni
group by v.nombrecompleto;
