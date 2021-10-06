/** Ejercicio4: Obtener el nombre del votante y el nombre de la localidad 
de los votantes que han ejercido su voto en una localidad con mas de 300000 habitantes */

select v.nombrecompleto, l.nombre 
from votantes v, localidades l
where v.localidad = l.idlocalidad
and l.numerohabitantes > 300000;