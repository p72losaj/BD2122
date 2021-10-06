/** Ejercicio6: Obtener el identificador del partido y el numero de datos o 
consultas que se tiene de dicho partido de entre todos los partidos sobre los 
que se han realizado alguna consulta */

select p.idpartido as "Partido", COUNT(c.idconsulta) as "conteo"
from partidos p, consultas c, consultas_datos cd
where p.idpartido = cd.partido and cd.consulta = c.idconsulta
group by p.idpartido;

/** Ejercicio7: Obtener el identificador del partido y el numero de datos o 
consultas que se tiene de dicho partido de entre todos los partidos sobre los 
que se han realizado alguna consulta */

select p.idpartido as "Partido", count(c.idconsulta) as "COUNT(PARTIDO)"
from partidos p, consultas c, consultas_datos cd
where p.idpartido = cd.partido and cd.consulta = c.idconsulta
group by p.idpartido;