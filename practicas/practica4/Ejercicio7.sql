/*
Los dos votantes más jóvenes se han enamorado y han tenido un bebé, que se llama
Juan. Mostrar el nombre y apellidos del bebé considerando que el votante más joven
pondrá el segundo apellido y el siguiente más joven pondrá el primer apellido
*/

set serveroutput on
declare
apellido2 votantes.nombrecompleto%type;
apellido1 votantes.nombrecompleto%type;
begin
select substr(nombrecompleto,instr(nombrecompleto,' '),8) into apellido2
from votantes where fechanacimiento = (select max(fechanacimiento) from votantes);
select substr(nombrecompleto,instr(nombrecompleto,' '),5) into apellido1
from votantes where fechanacimiento = (select max(fechanacimiento) from votantes
where fechanacimiento < (select max(fechanacimiento) from votantes));
dbms_output.put_line('El hijo se llama Juan ' || apellido1 || apellido2);
end;
