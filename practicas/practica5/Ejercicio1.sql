/*
Mediante bucle FOR para cursores, obtener el nombre de todos los votantes 
cuyo DNI acaba igual que el identificador de su localidad más 1
*/

set serveroutput on
declare 
    cursor c is select nombrecompleto 
        from votantes 
        where substr(dni,length(dni),length(dni)) = localidad + 1;
    numero INTEGER:= 0;
begin
    for num_row in c loop
        numero := numero+1;
        dbms_output.put_line(num_row.nombrecompleto);
    end loop;
    dbms_output.put_line('Hay un total de ' || numero || ' votantes');
end;
