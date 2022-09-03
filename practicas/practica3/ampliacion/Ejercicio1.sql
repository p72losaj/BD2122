/**
Ejercicio 1: Mostrar el nombre de pila, nombre de la localidad y nombre de
la comunidad de los votantes pertenecientes a las localidades 1,3 o 9
*/

/** Posicion del primer espacio 

select INSTR(nombrecompleto,' ');

*/

select SUBSTR(v.nombrecompleto,0,INSTR(v.nombrecompleto, ' ')) as "NOMBRE VOTANTE",
l.nombre as "NOMBRE LOCALIDAD", p.comunidad as "NOMBRE COMUNIDAD"
from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad
and l.provincia = p.idprovincia
and (v.localidad = 1 OR v.localidad=3 OR v.localidad=9);