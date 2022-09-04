-- Muestre el nombre completo y el DNI del votante mas longevo
set serveroutput on
declare
    nombre votantes.nombrecompleto%type;
    dni votantes.nombrecompleto%type;
begin
    select nombrecompleto,dni
        into nombre,dni
        from votantes
        where fechanacimiento = (select min(fechanacimiento) from votantes);
    dbms_output.put_line('El senor ' || nombre || ' con dni ' || dni || ' es el votante mas longevo');
end;
