/** Ejercicio 9:
Mostrar el nombre del partido y el número de consultas realizadas para aquellos partidos que aparecen en más de 10 consultas
*/

select p.nombrecompleto as "Partido", COUNT(c.idconsulta) as "conteo"
from partidos p, consultas c, consultas_datos cd
where p.idpartido = cd.partido and cd.consulta = c.idconsulta
group by p.nombrecompleto
having COUNT(c.idconsulta) > 10;
