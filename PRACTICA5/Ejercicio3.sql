/*
Ejercicio 3
Mediante un cursor y el bucle WHILE, obtener el nombre de todos los votantes 
cuyo DNI acaba igual que el identificador de su localidad más 1
*/

set serveroutput on;
DECLARE
cursor c is select nombrecompleto 
from votantes where substr(dni,length(dni),length(dni)) = localidad+1;
fila c%rowtype;
BEGIN
open c;
FETCH c into fila;
while c%FOUND LOOP
DBMS_OUTPUT.PUT_LINE(fila.nombrecompleto);
FETCH c into fila;
END LOOP;
dbms_output.put_line('Hay un total de ' || c%ROWCOUNT || ' votantes');
END;