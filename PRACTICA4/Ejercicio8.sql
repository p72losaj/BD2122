/*
Ejercicio 8: Sin utilizar ninguna subconsulta, crea un procedimiento PL/SQL que sume la cantidad 
de habitantes que tienen las dos localidades con menor identificador. A continuación, 
obtenga cuantas localidades existen con un numero de habitantes mayor que la suma 
de las dos localidades anteriores.
*/

set serveroutput on;

DECLARE
id1 number := 0; /* Identificador mas pequeno */
id2 number:= 0; /* Segundo identificador mas pequeno*/
salida localidades%rowtype; /* Fila con el identificador mas pequeno*/
salida2 localidades%rowtype; /* Fila con el segundo identificador mas pequeno*/
suma number:= 0; /* Suma de los habitantes */
contador number:= 0; /* contador de ciudades con numero habitantes > suma*/
BEGIN
select min(idlocalidad) into id1 from localidades;
select * into salida from localidades where idlocalidad=id1;
select min(idlocalidad) into id2 from localidades where idlocalidad > id1;
select * into salida2 from localidades where idlocalidad = id2;
suma := salida.numerohabitantes + salida2.numerohabitantes;
select COUNT(idlocalidad) into contador from localidades where numerohabitantes > suma;
dbms_output.put_line('Hay ' || contador || ' ciudades con mas de ' || suma || ' habitantes, que es la suma de las 2 localidades
 con IDs mas pequeños');
END;