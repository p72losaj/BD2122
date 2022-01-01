/*
Ejercicio 6
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a número de participaciones. Sólo se mostrarán aquellos votantes 
cuya participación ha sido mayor que la media de participaciones de todos los 
votantes
*/
set serveroutput on;
DECLARE
cursor c is select v.dni, count(c.votante) as conteo from votantes v,consultas c where v.dni = c.votante group by c.votante
order by count(c.votante) desc;
media FLOAT:= 0;
contador NUMBER:= 0;
BEGIN
for linea in c loop
media := media + linea.conteo;
contador := contador + 1;
end loop;
media := media / contador;
for linea in c loop
if linea.conteo > media then
dbms_output.put_line(linea.dni || ' ha participado ' || linea.conteo);
end if;
end loop;
END;

