/**
Ejercicio 3: Obtener el nombre de las localidades que tienen un número de 
habitantes mayor que la localidad del votante que es el segundo votante de más 
edad de entre todos los votantes existentes en la base de datos
*/

select distinct l.nombre
from votantes v, localidades l
where v.localidad = l.idlocalidad
and l.numerohabitantes > (
    select distinct l.numerohabitantes from votantes v, localidades l
    where v.fechanacimiento = (  select min(v.fechanacimiento) from votantes v
    where v.fechanacimiento > (select min(v.fechanacimiento) from votantes v)
    )
    and v.localidad = l.idlocalidad
);

/** 
Obtener el numero de habitantes de la localidad del segundo votante de mas edad ( fecha nacimiento mas antigua)
*/

/*
select distinct l.numerohabitantes from localidades l, votantes v
where v.localidad = l.idlocalidad;

*/

/** Obtener el segundo votante con mas edad */
/*
select dni from votantes
where fechanacimiento = (   
    select min(fechanacimiento) from votantes
    where fechanacimiento > (select min(fechanacimiento) from votantes)
)
*/