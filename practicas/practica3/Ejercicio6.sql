/*
Obtener el DNI del votante y el numero de veces que dicho votante ha
participado en una consulta, mostrando el resultado de manera descendente
en cuanto a n�mero de participaciones. S�lo se mostrar�n aquellos votantes
cuya participaci�n ha sido mayor que la media de participaciones de todos los
votantes.
*/

select v.dni, count(c.votante)
from votantes v, consultas c
where v.dni = c.votante
group by v.dni
having count(c.idconsulta) >
(
    select avg(count(c.idconsulta)) 
    from votantes v, consultas c
    where v.dni = c.votante
    group by v.dni
)
order by count(c.idconsulta) desc;