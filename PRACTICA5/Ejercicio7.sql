/*
Ejercicio 7
Crear una nueva tabla, llamada “votantesAntiguos”, que incluya la siguiente. 
informacion de aquellos votantes que nacieron antes de 1980: dni, 
nombrecompleto, email, fechanacimiento. Devolver por pantalla el nombre de 
cada uno de los votantes insertados asi como el total de votantes insertados en 
dicha tabla. Dicha tabla nueva debe tener un nuevo campo “Sueldo” de tipo 
numerico que incluira el sueldo de los votantes. Dicho sueldo sera de 1500 
euros y se aplica solo a aquellos que esten en activo. El resto tendra un sueldo 
de 0 euros. 
*/

DROP TABLE votantesAntiguos;

CREATE TABLE votantesAntiguos 
(dni number(8) primary key,
nombrecompleto varchar2(64),
email varchar2(64),
fechanacimiento date,
sueldo number(4) default 0);

set serveroutput on;
DECLARE
contador NUMBER:= 0;
cursor c is select dni,nombrecompleto,email,fechanacimiento,situacionlaboral from votantes where fechanacimiento < '01/01/80';
BEGIN
for linea in c loop
if(linea.situacionlaboral = 'Activo') then
insert into votantesantiguos values (linea.dni,linea.nombrecompleto,linea.email,linea.fechanacimiento,1500);
else insert into votantesantiguos values (linea.dni,linea.nombrecompleto,linea.email,linea.fechanacimiento,0);
end if;
DBMS_OUTPUT.PUT_LINE('Se han insertado a ' || linea.nombrecompleto);
contador := contador + 1;
end loop;
dbms_output.put_line('Se han insertado un total de ' || contador || ' votantes');
END;