/*
Mostrar sólo el nombre (primer nombre, sin apellidos) y el correo electrónico
del votante con DNI 30983712
*/
set serveroutput on
declare
    nombre votantes.nombrecompleto%type;
    correo votantes.email%type;
begin
    select substr(nombrecompleto,1,INSTR(nombrecompleto,' ')), email 
        into nombre, correo
        from votantes
        where dni = '30983712';
        
    dbms_output.put_line(nombre || 'con correo: ' || correo);
end;