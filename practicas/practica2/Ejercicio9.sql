/*
Mostrar el nombre del partido y el número de consultas realizadas para
aquellos partidos que aparecen en más de 10 consultas
*/

select p.nombrecompleto, count(c.partido) "conteo"
from partidos p, consultas_datos c
where p.idpartido = c.partido
group by p.nombrecompleto
having count(c.partido) > 10;