/*
Muestra el partido con un mayor numero de consultas.
Solo se puede usar una vez SELECT,FROM, WHERE y JOIN.
Resultado: Partido Socialista Obrero Espanol -> 18
*/

set serveroutput on;

declare
    partido partidos.nombrecompleto%type;
    conteo NUMBER:=0;
    cursor c is select p.nombrecompleto as partido, count(c.consulta) as conteo
        from partidos p, consultas_datos c 
        where p.idpartido = c.partido
        group by p.nombrecompleto;
begin
    for linea in c loop
        if linea.conteo >= conteo then 
            conteo:=linea.conteo;
            partido:= linea.partido;
        end if;
    end loop;
    dbms_output.put_line( partido || ' -> ' || conteo);
end;