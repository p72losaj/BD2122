/*
    Ejercicio 3: - Mostrar el nombre y el correo electrónico del 
    votante con DNI  30983712
*/

set SERVEROUTPUT ON;

DECLARE 
/* DNI a buscar */
mydni NUMBER := 30983712; 
/* Variable que almacena el nombre completo */
v_nombre votantes.nombrecompleto%type; 
/* Variable que almacena el correo electronico del votante*/
v_correo votantes.email%type;
BEGIN
SELECT SUBSTR(nombrecompleto,0,INSTR(nombrecompleto, ' ')),email into v_nombre,v_correo from votantes where dni = mydni;
dbms_output.put_line(v_nombre || ' con correo: ' || v_correo);
END;