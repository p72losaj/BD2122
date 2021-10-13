/**
Ejercicio 6:
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a número de participaciones. Sólo se mostrarán aquellos votantes 
cuya participación ha sido mayor que la media de participaciones de todos los 
votantes.
*/

select v.dni VOTANTE, count(c.votante) "COUNT(VOTANTE)"
from votantes v, consultas c
where v.dni = c.votante
group by v.dni
having count(c.votante) > (select AVG(count(c.votante)) 
from votantes v, consultas c
where v.dni = c.votante
group by v.dni)
order by count(c.votante) desc;

/** 
Media de participaciones de todos los votantes" 

select AVG(count(c.votante)) 
from votantes v, consultas c
where v.dni = c.votante
group by v.dni;

*/