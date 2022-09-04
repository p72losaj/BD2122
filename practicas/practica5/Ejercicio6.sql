/*
Obtener el DNI del votante y el numero de veces que dicho votante ha 
participado en una consulta, mostrando el resultado de manera descendente 
en cuanto a n�mero de participaciones. S�lo se mostrar�n aquellos votantes 
cuya participaci�n ha sido mayor que la media de participaciones de todos los 
votantes
*/

set serveroutput on
declare
    cursor c is select v.dni, count(c.idconsulta) as conteo 
        from votantes v, consultas c 
        where v.dni = c.votante
        group by c.votante
        having count(c.idconsulta) > ( select AVG(count(c.idconsulta)) 
                                        from consultas c, votantes v
                                        where v.dni = c.votante
                                        group by v.dni)
        order by count(c.idconsulta)  desc;
begin
    for linea in c loop
        dbms_output.put_line(linea.dni || ' ha participado ' || linea.conteo || ' veces');
    end loop;
end;