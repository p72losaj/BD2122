/*
Ejercicio 9
Considerando la tabla “votantesAntiguos” creada en el ejercicio anterior, 
ordenar los votantes de dicha tabla según fecha de nacimiento (ascendente). 
Recorrer cada votante y calcular el numero de letras que tiene su nombre (sin 
apellidos), mostrando, además, los votantes más jóvenes que él que tengan 
menos letras que él
*/
set serveroutput on;

DECLARE
cursor c is select * from votantesantiguos order by fechanacimiento asc;
cursor c2 is select * from votantesantiguos order by fechanacimiento asc;
letras NUMBER:= 0;
letras2 NUMBER := 0;
contador NUMBER:=0;
BEGIN
for linea in c loop
letras := length(SUBSTR(linea.nombrecompleto,0,INSTR(linea.nombrecompleto, ' ')));
dbms_output.put_line(linea.nombrecompleto || ' tiene mas letras que los siguientes mas jovenes: ');
    for linea2 in c2 loop
    letras2:= length(SUBSTR(linea2.nombrecompleto,0,INSTR(linea2.nombrecompleto, ' ')));
    if linea2.fechanacimiento > linea.fechanacimiento and letras2 < letras then
        dbms_output.put_line(linea2.nombrecompleto);
        contador := contador + 1;
    end if;
    end loop;
    if(contador = 0) then dbms_output.put_line('Nadie cumple esta condicion');
    end if;
    contador := 0;
end loop;
END;