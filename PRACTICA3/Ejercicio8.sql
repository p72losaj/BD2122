/*
Ejercicio 8:
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a número de participaciones y no mostrando los resultados del 
segundo votante de más edad
*/

select v.dni, count(c.votante) "COUNT(VOTANTE)"
from votantes v, consultas c
where v.dni = c.votante and (v.dni not like(select dni from votantes v
where v.fechanacimiento = (select min(v.fechanacimiento) from votantes v
where v.fechanacimiento > (select min(v.fechanacimiento) from votantes v)))
)
group by v.dni
order by count(c.votante) desc;

/** No obtener los datos del segundo votante con mas edad */

/**
select dni from votantes
where dni not like(select dni from votantes
where fechanacimiento = (select min(fechanacimiento) from votantes
where fechanacimiento > (select min(fechanacimiento) from votantes)));
*/

/** Dni segundo votante con mas edad*/

/**
select dni from votantes
where fechanacimiento = (select min(fechanacimiento) from votantes
where fechanacimiento > (select min(fechanacimiento) from votantes))
;
*/

/** Segundo Votante de mas edad 
select min(fechanacimiento) from votantes
where fechanacimiento > (select min(fechanacimiento) from votantes);
*/

/** Votante de mas edad

select min(fechanacimiento) from votantes;

*/

