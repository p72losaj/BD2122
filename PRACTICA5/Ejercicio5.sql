/*
Ejercicio 5
Mostrar los DNIs de los votantes en orden, indicando va antes que otro. El 
último DNI (el más pequeño) se indicará que es el más pequeño
*/

set serveroutput on;

DECLARE
cursor c is select dni from votantes order by dni desc;
dni_1 votantes.dni%type;
dni_2 votantes.dni%type;
BEGIN
for linea in c loop
dni_1 := linea.dni;
if dni_2 > dni_1 then dbms_output.put_line(dni_2 || ' va antes que ' || dni_1);
end if;
dni_2 := dni_1;
end loop;
DBMS_OUTPUT.PUT_LINE(dni_2 || ' es el menor');
END;