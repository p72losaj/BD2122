/*
Se ha decidido que a los votantes más jóvenes y más viejos se les va a hacer una
cuenta de la Universidad de Córdoba, guardando el nombre de usuario que tenían ya
en sus cuentas originales. Se necesita mostrar por pantalla la información, cómo
quedaría, sin modificar la base de datos
*/

set serveroutput on
declare
nombre1 votantes.nombrecompleto%type;
usuario1 VARCHAR2(64);
nombre2 votantes.nombrecompleto%type;
usuario2 VARCHAR2(64);
cuenta VARCHAR2(64) := '@uco.es';
begin
    select nombrecompleto, 
        substr(email,1,INSTR(email,'@')-1),
        (select nombrecompleto from votantes
            where fechanacimiento = (select max(fechanacimiento) from votantes)
        ),
        (select substr(email,1,INSTR(email,'@')-1) from votantes
            where fechanacimiento = (select max(fechanacimiento) from votantes)
            )
    into nombre1, usuario1, nombre2, usuario2
    from votantes
    where fechanacimiento = (select min(fechanacimiento) from votantes);
dbms_output.put_line(nombre1 || ' -- Email: ' || usuario1 || cuenta);
dbms_output.put_line(nombre2 || ' -- Email: ' || usuario2 || cuenta);
end;