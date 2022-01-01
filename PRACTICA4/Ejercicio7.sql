/*
Ejercicio 7: Los dos votantes m�s j�venes se han enamorado y han tenido un beb�, que se llama 
Juan. Mostrar el nombre y apellidos del beb� considerando que el votante m�s joven 
pondr� el segundo apellido y el siguiente m�s joven pondr� el primer apellido
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