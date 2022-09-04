/*
Obtener el nombre de todos los votantes así como el nombre de la localidad en 
la que viven teniendo en cuenta que todos los que sean de la provincia de 
Córdoba (identificador de localidad 1, 2 y 3) se han mudado a Madrid.
*/

set serveroutput on
declare
    cursor c is select v.nombrecompleto,l.nombre,l.idlocalidad 
        from votantes v, localidades l
        where v.localidad = l.idlocalidad;
    numero INTEGER:=0;
begin 
    for linea in c loop
        if linea.idlocalidad in (1,2,3) then
            dbms_output.put_line(linea.nombrecompleto || ' es de Madrid');
            numero:=numero+1;
        else dbms_output.put_line(linea.nombrecompleto || ' es de '|| linea.nombre);
        end if;
        if linea.nombre = 'Madrid' then 
            numero := numero+1;
        end if;
    end loop;
    dbms_output.put_line('Hay un total de '||numero||' votantes de Madrid');
end;