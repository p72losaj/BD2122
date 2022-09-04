/*
Los dos votantes más jóvenes se han enamorado y han tenido un bebé, que se llama
Juan. Mostrar el nombre y apellidos del bebé considerando que el votante más joven
pondrá el segundo apellido y el siguiente más joven pondrá el primer apellido
*/

set serveroutput on

declare
    apellido1 VARCHAR2(64);
    apellido2 VARCHAR2(64);
begin
    -- Apellido del segundo votante mas joven
    select substr(nombrecompleto,
              INSTR(nombrecompleto,' ')+1,
              INSTR(nombrecompleto,' ',1,2)-INSTR(nombrecompleto,' ')) 
    into apellido1
    from votantes
    where fechanacimiento = (select max(fechanacimiento) from votantes
                            where fechanacimiento < (select max(fechanacimiento) from votantes) );
    -- Apellido del votante mas joven
    select substr(nombrecompleto,
              INSTR(nombrecompleto,' ')+1,
              INSTR(nombrecompleto,' ',1,2)-INSTR(nombrecompleto,' '))
    into apellido2      
    from votantes
    where fechanacimiento = (select max(fechanacimiento) from votantes);

    dbms_output.put_line('El hijo se llama Juan ' || apellido1 || apellido2);
end;

