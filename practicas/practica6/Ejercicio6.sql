/*
Haga una funcionalidad que permita controlar la
situacion laboral y/o la fecha de nacimiento de los votantes. 
Si existe un votante que tenga mas de 59 anos
y aun no esta jubilado, debera quedar registrado su
DNI en la tabla de control de ejecuciones, as? como de
cual tabla proviene la informacion.
*/
set serveroutput on
create or replace trigger tr_ej6 before insert or update on votantes for each row
begin
    if (((SYSDATE - :new.fechanacimiento) /365) > 59) or (:new.situacionlaboral not like 'Jubilado') then
        insert into audit_table (datos,tabla) 
            values ('votante con dni ' || :new.dni || ' tiene mas de 59 y no esta jubilado', 'votantes');
    end if;
end;