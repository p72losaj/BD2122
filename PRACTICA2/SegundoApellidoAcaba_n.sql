/* Ejercicio1: Obtener el nombre de todos los votantes cuyo segundo apellido acabe en n */

select nombrecompleto from votantes where nombrecompleto like '% % %n';

