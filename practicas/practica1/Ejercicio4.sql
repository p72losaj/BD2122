-- Realizar el borrado de la tabla votantes
--DROP TABLE VOTANTES; -- Error por clave foranea
DROP TABLE VOTANTES CASCADE CONSTRAINTS;
--  borrar el resto de tablas de la base de datos
--DROP TABLE CONSULTAS; -- Error por clave foranea
DROP TABLE CONSULTAS CASCADE CONSTRAINTS;
DROP TABLE CONSULTAS_DATOS;
--DROP TABLE EVENTOS; -- Error por clave foranea
DROP TABLE EVENTOS CASCADE CONSTRAINTS;
DROP TABLE EVENTOS_RESULTADOS;
DROP TABLE LOCALIDADES;
DROP TABLE PARTIDOS;
DROP TABLE PROVINCIAS;