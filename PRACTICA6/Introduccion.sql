/*
INTRODUCCION
Cree una tabla para almacenar el registro de ejecuciones de los triggers durante 
la practica. 
Debera tener dos columnas, “datos” y “tabla”, en el campo datos
almacenara detalles del cambio y el campo tabla almacenara 
el nombre de la tabla donde ocurrio el cambio.
*/

create table auditoria (datos varchar2(100 BYTE), tabla varchar2(100 BYTE));



