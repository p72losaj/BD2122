/*
Mostrar el nombre del partido pol�tico sobre el que se han realizado m�s de 10
consultas
*/

select p.nombrecompleto
from partidos p, consultas_datos cd
where p.idpartido = cd.partido
group by p.nombrecompleto
having count(cd.partido) > 10;