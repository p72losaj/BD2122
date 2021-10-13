/**
Ejercicio 2: Nombre de todos los votantes + nombre localidad en la que viven 
teniendo en cuenta que todos los que sean de la provincia de Cordoba 
(identificador de localidad 1,2 y 3) se han mudado a Madrid
*/

select v.nombrecompleto, DECODE(v.localidad, 1, 'Madrid', 2, 'Madrid', 3, 'Madrid', l.nombre) NOMBRE 
from votantes v, localidades l
where v.localidad = l.idlocalidad;
