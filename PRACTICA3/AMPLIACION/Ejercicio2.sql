/**
Ejercicio 2: Ordenar las localidades en base a su identificador de localidad
*/

select distinct a.NOMBRE || ' va antes que ' || b.nombre as "Ordenacion" 
from localidades a,localidades b
WHERE b.idlocalidad = a.idlocalidad+1
;