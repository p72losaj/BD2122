/*
El votante con DNI 30983712 desea que lo llamen Pepe en lugar de Jose. Sin
embargo, este cambio no puede realizarse oficialmente en la base de datos
puesto que no es su nombre real
*/

set serveroutput on
declare
    apellidos votantes.nombrecompleto%type;
begin
    select substr(nombrecompleto, INSTR(nombrecompleto, ' '),length(nombrecompleto))
        into apellidos
        from votantes
        where dni = '30983712';
    dbms_output.put_line('Pepe' || apellidos);
end;
