/*
Obtener el nombre del votante y el nombre de la localidad de aquellos
votantes que han ejercido el voto en una localidad que tiene más de 300000
habitantes
*/

select v.nombrecompleto, l.nombre
from votantes v, localidades l
where v.localidad = l.idlocalidad
    and l.numerohabitantes > 300000;