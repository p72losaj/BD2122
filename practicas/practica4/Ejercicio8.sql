/*
Sin utilizar ninguna subconsulta, crea un procedimiento PL/SQL que sume la cantidad 
de habitantes que tienen las dos localidades con menor identificador. A continuación, 
obtenga cuantas localidades existen con un numero de habitantes mayor que la suma 
de las dos localidades anteriores
*/

set serveroutput on
declare
id1 localidades.idlocalidad%type;
nhabitantes1 INTEGER:= 0;
nhabitantes2 INTEGER := 0;
totalhabitantes INTEGER:= 0;
nciudades INTEGER:=0;
begin
select idlocalidad,numerohabitantes into id1,nhabitantes1 from localidades 
where idlocalidad = (select min(idlocalidad) from localidades);
select numerohabitantes into nhabitantes2 from localidades 
where idlocalidad = id1+1;
totalhabitantes := nhabitantes1 + nhabitantes2;
select count(idlocalidad) into nciudades from localidades where numerohabitantes > totalhabitantes;
dbms_output.put_line('Hay ' || nciudades || ' con mas de '|| totalhabitantes 
|| ' habitantes, que es la suma de las 2 localidades con IDs mas pequenos' );
end;