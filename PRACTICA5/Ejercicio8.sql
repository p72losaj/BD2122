/*
Ejericicio 8
Considerando la tabla “votantesAntiguos” creada en el ejercicio anterior, 
mostrar únicamente el nombre (sin apellidos) de cada uno de los votantes que 
hay en esa tabla. Para cada uno, mostrar el nombre (sin apellidos) y el numero 
de letras que tiene dicho nombre. Por último, indicar el numero de letras 
totales que tienen los nombres (sin apellidos) de los votantes de esa tabla.
*/

set serveroutput on;

DECLARE 
cursor c is select substr(nombrecompleto,0,instr(nombrecompleto, ' ')) as nombre from votantesantiguos;
letras NUMBER := 0;
BEGIN
for linea in c loop
dbms_output.put_line(linea.nombre || ' tiene ' || (length(linea.nombre)-1) || ' letras.');
letras := letras + length(linea.nombre)-1;
end loop;
dbms_output.put_line('En total hay ' || letras || ' letras');
END;