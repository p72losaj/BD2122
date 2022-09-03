/**
Ejericicio 4: 
Mostrar el nombre completo de los votantes, número de localidad a la que pertenecen y
“mayoria edad” (mostrará: 'mayor edad' y 'menor edad' en lugar de su fecha de nacimiento
en función de si son mayores de edad o no). 
Los resultados de esta consulta sólo recogerán a los votantes de las localidades 
2, 4 y 8 y quedarán ordenados por la nueva columna de
“mayoria edad”
*/

select nombrecompleto, localidad, 
decode (
    (SIGN (18 - (sysdate - fechanacimiento) / 365)), 
    -1, 'Mayor edad',0,'Mayor edad',1,'Menor edad'
) as "mayoria edad"
from votantes
where localidad in (2,4,8)
order by "mayoria edad";

/** Obtenemos los signos de las edades de los usuarios */
/**
select SIGN (18 - (sysdate - fechanacimiento) / 365) from votantes;
*/

/**
Obtenemos los votantes indicando si son mayores de edad o no 
*/
/**
select nombrecompleto, decode (
    (SIGN (18 - (sysdate - fechanacimiento) / 365)), 
    -1, 'Mayor edad',0,'Mayor edad',1,'Menor edad') as mayoria
from votantes;
*/