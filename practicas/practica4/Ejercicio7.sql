/*
Los dos votantes m�s j�venes se han enamorado y han tenido un beb�, que se llama
Juan. Mostrar el nombre y apellidos del beb� considerando que el votante m�s joven
pondr� el segundo apellido y el siguiente m�s joven pondr� el primer apellido
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
