/*
Muestre por pantalla el clasico “Hola mundo”, pero ademas muestre la fecha
actual.
*/

set serveroutput on

declare
begin
dbms_output.put_line('Hola mundo, hoy es el dia ' || sysdate);
end;