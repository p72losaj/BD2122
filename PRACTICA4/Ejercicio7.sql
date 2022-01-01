/*
Ejercicio 7: Los dos votantes más jóvenes se han enamorado y han tenido un bebé, que se llama 
Juan. Mostrar el nombre y apellidos del bebé considerando que el votante más joven 
pondrá el segundo apellido y el siguiente más joven pondrá el primer apellido
*/

set serveroutput on;

DECLARE
/* apellido del votante mas joven */
apellido2 votantes.nombrecompleto%type;
/* apellido del segundo votantes mas joven */
apellido1 votantes.nombrecompleto%type;
BEGIN
select SUBSTR(v.nombrecompleto,6,9),SUBSTR(v2.nombrecompleto,8,4) into apellido2,apellido1 
from votantes v, votantes v2 where 
v.fechanacimiento = (select max(fechanacimiento) from votantes)
and v2.fechanacimiento = (select max(fechanacimiento) from votantes where fechanacimiento <
(select max(fechanacimiento) from votantes));
dbms_output.put_line('El hijo se llama Juan ' || apellido1 || apellido2);
END;