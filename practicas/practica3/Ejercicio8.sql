/*
Obtener el DNI del votante y el numero de veces que dicho votante ha
participado en una consulta, mostrando el resultado de manera descendente
en cuanto a número de participaciones y no mostrando los resultados del
segundo votante de más edad
*/

select v.dni, count(c.votante)
from votantes v, consultas c
where v.dni = c.votante
    and dni not like (select dni from votantes  where fechanacimiento = 
        (select min(fechanacimiento) from votantes where fechanacimiento > 
            (select min(fechanacimiento) from votantes)))
group by v.dni
order by count(c.votante) desc;