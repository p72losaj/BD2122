/*
Mediante un cursor y el bucle LOOP, obtener el nombre de todos los votantes 
cuyo DNI acaba igual que el identificador de su localidad más 1
*/

set serveroutput on
declare
    cursor c is select nombrecompleto 
        from votantes 
        where substr(dni,length(dni),length(dni)) = localidad+1;
    fila c%rowtype;
    numero INTEGER:=0;
begin
    open c;
    loop
        FETCH c into fila;
        exit when c%notfound;
        numero := numero + 1;
        dbms_output.put_line(fila.nombrecompleto);
    end loop;
    dbms_output.put_line('Hay un total de ' || numero || ' votantes');
end;