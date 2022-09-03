/*
Obtener el nombre de todos los votantes así como el nombre de la localidad en
la que viven teniendo en cuenta que todos los que sean de la provincia de
Córdoba (identificador de localidad 1, 2 y 3) se han mudado a Madrid
*/

select v.nombrecompleto,
    decode(v.localidad,1,'Madrid',2,'Madrid',3,'Madrid',l.nombre) "Localidad"
from votantes v, localidades l
where v.localidad = l.idlocalidad;