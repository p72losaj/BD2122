/*
Ejercicio 4
Obtener el nombre de todos los votantes así como el nombre de la localidad en 
la que viven teniendo en cuenta que todos los que sean de la provincia de 
Córdoba (identificador de localidad 1, 2 y 3) se han mudado a Madrid.
Finalmente, mostrar el numero de votantes que son de Madrid
*/

set serveroutput on;

DECLARE
numero NUMBER:= 0;
cursor c is select v.nombrecompleto,l.nombre,l.idlocalidad from
votantes v,localidades l where v.localidad = l.idlocalidad;
BEGIN
for linea in c loop
if linea.idlocalidad=1 or linea.idlocalidad=2 or linea.idlocalidad = 3 then
dbms_output.put_line(linea.nombrecompleto || ' es de Madrid');
numero := numero + 1;
else dbms_output.put_line(linea.nombrecompleto || ' es de ' || linea.nombre);
end if;
if linea.nombre = 'Madrid' then numero:=numero+1;
end if;
end loop;
dbms_output.put_line('Hay un total de ' || numero || ' votantes de Madrid');
END;