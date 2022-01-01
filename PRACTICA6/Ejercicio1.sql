/*
Ejercicio 1

Cree un trigger que guarde los cambios que se produzcan en la columna ‘nombre’ 
 de la tabla ‘eventos’.
Debera almacenar: ‘NombreAnterior NuevoNombre’
*/

set serveroutput on;

create or replace trigger trigger_ej1 after update on eventos for each row
begin
        insert into audit_table (datos,tabla) values (:old.nombre || ' ' || :new.nombre,'eventos');
end;

update eventos set nombre='Madrid 2021' where idevento=10;

select * from audit_table;