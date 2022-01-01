/*
Ejercicio 4: El votante con DNI 30983712 desea que lo llamen Pepe en lugar de Jose. Sin 
embargo, este cambio no puede realizarse oficialmente en la base de datos 
puesto que no es su nombre real.
*/

set serveroutput on;

DECLARE
/*DNI A OBTENER DEL VOTANTE*/
mydni NUMBER:= 30983712;
/* NOMBRE COMPLETO DEL VOTANTE*/
v_nombre votantes.nombrecompleto%type;
BEGIN
SELECT SUBSTR(nombrecompleto, 6, length(nombrecompleto)-5) into v_nombre from votantes where dni = mydni;
DBMS_OUTPUT.PUT_LINE('Pepe ' || v_nombre);
END;