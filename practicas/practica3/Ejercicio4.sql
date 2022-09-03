/*
Obtener el DNI del segundo votante de m�s edad de entre todos los votantes
existentes en la base de datos
*/

select dni
from votantes
where fechanacimiento = ( select min(fechanacimiento)
                          from votantes
                          where fechanacimiento > 
                            ( select min(fechanacimiento) from votantes));