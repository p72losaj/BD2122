/*
Mostrar el nombre de cada partido politico y la 
maxima certidumbre que tiene para sus consultas
*/

select p.nombrecompleto, MAX(c.certidumbre)
from partidos p, consultas_datos c
where p.idpartido = c.partido
group by p.nombrecompleto;