/**
Ejercicio 7:

Obtener el nombre de los votantes cuya participación ha sido mayor que la 
media de participaciones de todos los votantes.

*/

select v.nombrecompleto
from votantes v, consultas c
where v.dni = c.votante
group by v.nombrecompleto
having count(c.evento) > (select MEDIAN(c.evento)
from votantes v, consultas c
where v.dni = c.votante)
order by v.nombrecompleto;

/** 
Obtenemos la media de participaciones de todos los votantes 
select MEDIAN(c.evento)
from votantes v, consultas c
where v.dni = c.votante;
*/

