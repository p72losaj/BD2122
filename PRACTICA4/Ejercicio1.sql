/*
    Ejercicio 1: Mostrar por pantalla el clasico "Hola mundo", mostrando
    la fecha actual
*/

set serveroutput on;

DECLARE
    fecha DATE := sysdate;
BEGIN
    dbms_output.put_line('Hola mundo, hoy es el dia ' || fecha );
END;