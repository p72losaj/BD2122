/*
Ejercicio 5: Muestre el nombre completo y el DNI del votante ma?s longevo
*/

set serveroutput on;

DECLARE 
/* Nombre del votante */
v_nombre votantes.nombrecompleto%type;
/* DNI DEL VOTANTE */
dni votantes.dni%type;
BEGIN
select nombrecompleto,dni into v_nombre,dni from votantes where fechaNacimiento = (select min(fechaNacimiento) from votantes);
dbms_output.put_line('El senor ' || v_nombre || ' con dni ' || dni || ' es el votante mas longevo');
END;