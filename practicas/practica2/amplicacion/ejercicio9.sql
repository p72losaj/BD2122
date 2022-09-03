/*
Obtener el nombre de los votantes y el nombre de su localidad para 
aquellos votantes que han sido consultados en una localidad que tiene mas 
de 300000 habitantes
*/

select distinct v.nombrecompleto, l.nombre
from votantes v,localidades l, consultas c
where v.localidad = l.idlocalidad
    and l.numerohabitantes > 300000
    and v.dni = c.votante;