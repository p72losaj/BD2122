/*
Considerando la tabla “votantesAntiguos” creada en el ejercicio anterior, 
ordenar los votantes de dicha tabla según fecha de nacimiento (ascendente). 
Recorrer cada votante y calcular el numero de letras que tiene su nombre (sin 
apellidos), mostrando, además, los votantes más jóvenes que él que tengan 
menos letras que él
*/
set serveroutput on
declare
    contador integer:=0;
    cursor c is select nombrecompleto,fechanacimiento, length(substr(nombrecompleto,1,instr(nombrecompleto,' '))) as letras 
        from votantesAntiguos 
        order by fechanacimiento asc;
    cursor c2 is select nombrecompleto,fechanacimiento, length(substr(nombrecompleto,1,instr(nombrecompleto,' '))) as letras 
        from votantesAntiguos 
        order by fechanacimiento asc;
begin
    for linea in c loop
        dbms_output.put_line(linea.nombrecompleto || ' tienes mas letras que los siguientes jovenes: ');
        for linea2 in c2 loop
            if (linea.fechanacimiento < linea2.fechanacimiento) and (linea.letras > linea2.letras) then
                dbms_output.put_line(linea2.nombrecompleto);
                contador:= contador+1;
            end if;
        end loop;
        if contador=0 then 
            dbms_output.put_line('Nadie cumple esta condicion');
        end if;
        contador:=0;
        dbms_output.put_line(' ');
    end loop;
end;