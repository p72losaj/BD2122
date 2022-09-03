/*
Obtener el nombre del votante y el nombre de la comunidad de aquellos
votantes que han ejercido el voto en una localidad que tiene más de 300000
habitantes.
*/

select v.nombrecompleto, p.comunidad
from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad
    and l.provincia = p.idprovincia
    and l.numerohabitantes > 300000;