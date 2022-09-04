/*
Los dos votantes m�s j�venes se han enamorado y han tenido un beb�, que se llama
Juan. Mostrar el nombre y apellidos del beb� considerando que el votante m�s joven
pondr� el segundo apellido y el siguiente m�s joven pondr� el primer apellido
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

