/* - Mostrar el nombre de los partidos y el número de consultas realizadas para 
cada partido considerando sólo aquellas consultas en las que el encuestado ha 
contestado afirmativamente a votar a dicho partido y con una certidumbre por 
encima del 80%, es decir, 0.8
*/

select p.nombrecompleto, count(c.idconsulta)
from partidos p, consultas c, consultas_datos cd
where p.idpartido = cd.partido and cd.consulta = c.idconsulta
and cd.certidumbre > 0.8
and cd.respuesta = 'Si'
group by p.nombrecompleto;
