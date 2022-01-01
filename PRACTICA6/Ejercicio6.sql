/*
Ejercicio 6
Haga una funcionalidad que permita controlar la
situacion laboral y/o la fecha de nacimiento de los votantes. 
Si existe un votante que tenga mas de 59 anos
y aun no esta jubilado, debera quedar registrado su
DNI en la tabla de control de ejecuciones, asi como de
cual tabla proviene la informacion.
*/

set serverout on

create or replace trigger trigger_ejercicio6 before insert or update on votantes for each row
BEGIN
if :new.situacionlaboral not like 'Jubilado' and ((SYSDATE -:new.fechanacimiento)/365) > 59  then
    insert into audit_table (datos,tabla) values ('El votante con dni ' || :new.dni || 'tiene mas de 59 anos y no esta jubilado','votantes');
end if;
END;

update votantes set fechanacimiento = '11/07/30' where dni = '30983712';

select * from votantes where  dni = '30983712';