/*
Obtener el identificador del partido y el número de datos o consultas que se
tiene para dicho partido de entre todos los partidos sobre los que se han
realizado alguna consulta
*/

select p.idpartido "PARTIDO", count(cd.partido) "conteo"
from partidos p, consultas_datos cd
where p.idpartido = cd.partido 
group by p.idpartido;