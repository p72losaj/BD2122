/** Ejercicio 8: Mostrar el nombre del partido politico en el que se han
realizado mas de 10 consultas */

select p.nombrecompleto as "Partido", COUNT(c.idconsulta) as "conteo"
from partidos p, consultas c, consultas_datos cd
where p.idpartido = cd.partido and cd.consulta = c.idconsulta
group by p.nombrecompleto
having COUNT(c.idconsulta) > 10;
