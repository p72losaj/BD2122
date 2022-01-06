/*
Ejercicio 2
Implemente un trigger que valide el numero de habitantes de las localidades. 
Si se intenta modificar dicho valor, el numero de habitantes nunca podra 
ser mayor que 4000000 y no podra ser menor que 1. En caso de
ocurrir lo anterior debera modificar el valor que se intento insertar, 
y en su lugar debera mantener el valor de la columna.
*/

create or replace trigger triger_2 before update on localidades for each row

begin
        if :new.numerohabitantes > 4000000 or :new.numerohabitantes < 1 then
            :new.numerohabitantes := :old.numerohabitantes;
        end if;
end;

update localidades set numerohabitantes = -5 where idlocalidad = 1;

select* from localidades where idLocalidad = 1;