/*
Ejercicio 4
Elabore un procedimiento que no permita que se
interten numeros de telefono invalidos de los votantes.
El rango permitido es [600000000, 799999999].
*/

alter table votantes add constraint ck_1 check(telefono > = 600000000 and
telefono <= 799999999);

insert into votantes values(4565700,'Ant Moya', 'Basicos','Estudiante',
'alvadigo@ono.es',5,'29/08/1999',600000002);