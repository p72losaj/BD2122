/** Ejercicio 5: Obtener el nombre del votante y el nombre de la comunidad de 
aquellos que han ejercido el voto en una localidad que tiene mas de 300000
habitantes */

select v.nombrecompleto, p.nombre
from votantes v, provincias p, localidades l
where p.idprovincia = l.provincia
and v.localidad = l.idlocalidad
and l.numerohabitantes > 300000;