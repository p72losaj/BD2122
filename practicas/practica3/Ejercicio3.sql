/*
Mostrar	las	siglas de aquellos partidos que	han	participado	un mayor número de 
veces en eventos
*/

select p.siglas 
from partidos p, eventos_resultados e
where p.idpartido = e.partido
group by p.siglas
having COUNT(e.evento) = 
(
    select MAX(COUNT(e.evento)) 
    from eventos_resultados e, partidos p
    where p.idpartido = e.partido
    group by p.idpartido
);