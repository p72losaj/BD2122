/*
Obtener el DNI del segundo votante de más edad de entre todos los votantes
existentes en la base de datos
*/

select dni
from votantes
where fechanacimiento = ( select min(fechanacimiento)
                          from votantes
                          where fechanacimiento > 
                            ( select min(fechanacimiento) from votantes));