/*
Ejercicio 6: Se ha decidido que a los votantes más jóvenes y más viejos se les va a hacer una 
cuenta de la Universidad de Córdoba, guardando el nombre de usuario que tenían ya 
en sus cuentas originales
*/

set serveroutput on;

DECLARE
/*nombrecompleto del usuario mas viejo*/
nombrecompletoViejo votantes.nombrecompleto%type;
/* email del usuario mas vieho */
emailViejo votantes.email%type;
/* nombrecompleto del usuario mas joven*/
nombrecompletoJoven votantes.nombrecompleto%type;
/* email del usuario mas joven */
emailJoven votantes.nombrecompleto%type;
BEGIN
SELECT v1.nombrecompleto,SUBSTR(v1.email,0,12), v2.nombrecompleto, substr(v2.email,0,9) into 
nombrecompletoViejo,emailViejo,nombrecompletoJoven,emailJoven from votantes v1,votantes v2
where v1.fechanacimiento = (select min(fechanacimiento) from votantes)
and v2.fechanacimiento = (select max(fechanacimiento) from votantes);
DBMS_OUTPUT.PUT_LINE(nombrecompletoViejo || '-- Email: ' || emailViejo || 'uco.es');
DBMS_OUTPUT.PUT_LINE(nombrecompletoJoven || '--Email: ' || emailJoven || 'uco.es');
END;