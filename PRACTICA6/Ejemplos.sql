set serveroutput on;
/* Crear un trigger */
create or replace trigger miercoles after insert on votantes for each row
begin
    dbms_output.put_line('Es miercoles y hemos insertado');
end;

/* Crear un constraint */

