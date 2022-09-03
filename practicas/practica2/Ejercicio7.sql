/*
Mostrar el identificador de partido y el número de consultas realizadas para
cada partido
*/

select p.idpartido "PARTIDO", count(cd.partido)
from partidos p,consultas_datos cd
where p.idpartido = cd.partido 
group by p.idpartido;