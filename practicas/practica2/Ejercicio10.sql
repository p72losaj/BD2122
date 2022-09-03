/*
Mostrar el nombre de los partidos y el n�mero de consultas realizadas para
cada partido considerando s�lo aquellas consultas en las que el encuestado ha
contestado afirmativamente a votar a dicho partido y con una certidumbre por
encima del 80%, es decir, 0.8
*/

select p.nombrecompleto, count(c.partido) "conteo"
from partidos p, consultas_datos c
where p.idpartido = c.partido
    and c.respuesta = 'Si'
    and c.certidumbre > 0.8
group by p.nombrecompleto;