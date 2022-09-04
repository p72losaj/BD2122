/*
Mostrar los DNIs de los votantes en orden, indicando va antes que otro. El 
�ltimo DNI (el m�s peque�o) se indicar� que es el m�s peque�o
*/

set serveroutput on
declare
    cursor c is select dni 
        from votantes 
        order by dni desc;
    dni1 votantes.dni%type;
    dni2 votantes.dni%type;
begin
    for linea in c loop
        dni1 := linea.dni;
        if dni2 > dni1 then
            dbms_output.put_line(dni2 || ' va antes que ' || dni1);
        end if;
        dni2 := dni1;
    end loop;
    dbms_output.put_line(dni2 || ' es el menor');
end;