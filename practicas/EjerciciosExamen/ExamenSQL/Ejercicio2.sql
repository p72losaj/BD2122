/*
Mostrar el nombre de los votantes cuya longitud del primer nombre sea menor
que el ID de la localidad a la que pertenecen y junto a ella muestra la diferencia
de edad (en anos) entre la persona mas joven y mas mayor de su localidad.
[NOTA: en caso de no usar EXTRACT simplemente se restan las fechas y se divide 
entre 365 y es igual de valido]
*/

select v.nombrecompleto "Nombre", 
        (
            (
                (select max(fechanacimiento) from votantes where localidad = v.localidad)
                -
                (select min(fechanacimiento) from votantes where localidad = v.localidad)
            ) /365
        ) "Diferencia"
from votantes v
where length(substr(v.nombrecompleto,1,INSTR(v.nombrecompleto,' '))) < v.localidad
;