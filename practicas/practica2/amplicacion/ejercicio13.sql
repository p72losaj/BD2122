/*
Mostrar el nombre de los partidos y la certidumbre media obtenida para cada 
partido considerando solo aquellas consultas en las que el encuestado ha 
contestado negativamente a votar a dicho partido y con una certidumbre 
significativa (por encima del 60%)
*/

select p.nombrecompleto, AVG(c.certidumbre)
from partidos p, consultas_datos c
where p.idpartido = c.partido
    and c.respuesta = 'No'
    and c.certidumbre > 0.6
group by p.nombrecompleto;