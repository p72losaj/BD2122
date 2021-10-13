/**
Ejercicio 3: Mostrar las siglas de los partidos que han participado un 
mayor numero de veces en eventos
*/

select p.siglas
from partidos p, eventos_resultados ev
where p.idpartido = ev.partido
group by p.siglas
having COUNT(ev.evento) = (
    select MAX (COUNT(ev.evento))
    FROM partidos p, eventos_resultados ev
    where p.idpartido = ev.partido
    group by p.siglas)
order by p.siglas;

/**
    partido con el mayor numero de veces de participacion en eventos
*/  

select p.siglas,MAX(COUNT(ev.evento)) maximo
from partidos p, eventos_resultados ev
where p.idpartido = ev.partido
group by p.siglas
order by p.siglas;

select * from partidos;