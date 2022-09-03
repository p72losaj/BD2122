/*
Obtener el DNI del votante y el numero de veces que dicho votante ha
participado en una consulta, mostrando el resultado de manera descendente
en cuanto a número de participaciones
*/

select v.dni, count(c.votante)
from votantes v, consultas c
where v.dni = c.votante
group by v.dni
order by count(c.votante) desc;