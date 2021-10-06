/**
Ejercicio 4: Borrado de las tablas creadas
*/

/** Eliminamos la tabla votantes */

drop table votantes; /** NO funciona pues la tabla votantes tiene una clave 
                        foranea */
drop table votantes CASCADE CONSTRAINTS;                        
/** Eliminamos la tabla consultas */
drop table consultas;/** NO funciona pues la tabla consultas tiene una clave 
                        foranea */
drop table consultas CASCADE CONSTRAINTS;
/** Eliminamos la tabla consultas_datos */
drop table consultas_datos;
/** Eliminamos la tabla eventos */
drop table eventos; /** Eventos tiene clave foranea */
drop table eventos CASCADE CONSTRAINTS;
/** Eliminamos la table eventos_resultados */
drop table eventos_resultados;
/** Eliminamos la tabla localidades */
drop table localidades;
/** Eliminamos la tabla partidos */
drop table partidos;
/** Eliminamos la tabla provincias */
drop table provincias;