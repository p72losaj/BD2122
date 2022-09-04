/*
Considerando la tabla “votantesAntiguos” creada en el ejercicio anterior, 
mostrar únicamente el nombre (sin apellidos) de cada uno de los votantes que 
hay en esa tabla. Para cada uno, mostrar el nombre (sin apellidos) y el numero 
de letras que tiene dicho nombre. Por último, indicar el numero de letras 
totales que tienen los nombres (sin apellidos) de los votantes de esa tabla.
*/

set serveroutput on
declare
    numero integer:=0;
    cursor c is select substr(nombrecompleto,1,instr(nombrecompleto,' ')) as nombre,
        length(substr(nombrecompleto,1,instr(nombrecompleto,' ')))-1 as longitudNombre 
        from votantesAntiguos;
begin
    for linea in c loop
        dbms_output.put_line(linea.nombre || ' tiene ' || linea.longitudNombre || ' letras');
        numero := numero + linea.longitudNombre;
    end loop;
    dbms_output.put_line('En total hay ' || numero || ' letras');
end;