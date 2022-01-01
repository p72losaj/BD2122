/*
Ejercicio1: Mediante bucle for para cursores, obtener el nombre de 
todos los votantes cuyo DNI acaba igual que el identificador de su localidad mas
1
*/

set serveroutput on;
DECLARE
valor NUMBER := 0;
cursor c is select nombrecompleto 
from votantes where substr(dni,length(dni),length(dni)) = localidad+1;
BEGIN
FOR num_row in c loop
valor := valor+1;
DBMS_OUTPUT.PUT_LINE(num_row.nombrecompleto);
end loop;
dbms_output.put_line('Hay un total de ' || valor || ' votantes');
END;