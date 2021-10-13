/**
Ejercicio 1: Obtener el nombre de todos los votantes cuyo DNI acaba igual
que el identificador de su localidad mas 1
*/

select nombrecompleto
from votantes
where SUBSTR(dni,LENGTH(dni),LENGTH(dni)) = localidad+1;