/**
Ejercicio 4: - Obtener el DNI del segundo votante de más edad de entre todos los votantes 
existentes en la base de datos.
*/

select dni
from votantes
where fechanacimiento = (   
    select min(fechanacimiento) from votantes
    where fechanacimiento > (select min(fechanacimiento) from votantes)
)
;

/* 
Fecha de nacimiento del segundo votante mas pequeno 
select min(fechanacimiento) from votantes
where fechanacimiento > (select min(fechanacimiento) from votantes);
*/

/**
Fecha de nacimiento mas pequena
select min(fechanacimiento) from votantes;
*/
