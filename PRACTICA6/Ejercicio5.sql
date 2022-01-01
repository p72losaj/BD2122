/*
Ejercicio 5
Restrinja que el tipo de los eventos deban comenzar con letra inicial mayuscula 
y debe terminar en ‘s’.
De no cumplirse, debera impedir que se inserte en la
tabla.
*/

---Desabilitamos CK_NOMBRE durante el ejercicio ------

alter table eventos disable constraint CK_NOMBRE;

alter table eventos add constraint ck_5 
check(substr(tipo,1,1)>= 'A' and SUBSTR(tipo,1,1)<= 'Z'
and tipo like '%s');

insert into eventos values (40,'mi evento',SYSDATE, 'Otras pruebas', 'Clase BD');

/*
declare
tipo varchar2(100);
begin
    tipo:= 'Holas';
    if substr(tipo,1,1)>= 'A' and SUBSTR(tipo,1,1)<= 'Z' then 
        dbms_output.put_line('Entra');
    end if;
    
    if tipo like '%s' then dbms_output.put_line('Entra2');
    end if;
end;
*/