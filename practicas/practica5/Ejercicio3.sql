/*
Mediante un cursor y el bucle WHILE, obtener el nombre de todos los votantes 
cuyo DNI acaba igual que el identificador de su localidad más 1.
*/

set serveroutput on
declare
    cursor c is select nombrecompleto 
        from votantes 
        where substr(dni, length(dni),length(dni)) = localidad+1;
    numero INTEGER:=0;
    fila c%rowtype;
begin
    open c;
    fetch c into fila;
    while c%found loop
        numero := numero +1;
        dbms_output.put_line(fila.nombrecompleto);
        fetch c into fila;
    end loop;
    dbms_output.put_line('Hay un total de '|| numero || ' votantes');
end;