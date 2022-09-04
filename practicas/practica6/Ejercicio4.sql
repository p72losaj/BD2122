/*
Elabore un procedimiento que no permita que se
interten numeros de telefono invalidos de los votantes.
El rango permitido es [600000000, 799999999].
*/

alter table votantes add constraint ck_ej4 
check (telefono > = 600000000 and telefono <= 799999999);