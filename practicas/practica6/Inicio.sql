/*
Cree una tabla denominada audit_table para almacenar el registro de ejecuciones de los triggers durante la practica.
Debera tener dos columnas, “datos” y “tabla”, en el campo datos
almacenara detalles del cambio y el campo tabla almacenara el nombre de la tabla donde ocurrio el cambio.
*/

drop table audit_table;

create table audit_table (datos varchar2(100 byte),tabla varchar2(100 byte));