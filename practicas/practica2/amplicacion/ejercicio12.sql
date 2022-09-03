/*
Mostrar el nombre del votante y su certidumbre media en todas las 
consultas en las que ha respondido de manera afirmativa UNICAMENTE para aquellos
votantes cuyo certidumbre media esta entre 0'5 y 0'8.
*/

select v.nombrecompleto, AVG(cd.certidumbre)
from votantes v, consultas c, consultas_datos cd
where v.dni = c.votante
    and c.idconsulta = cd.consulta
    and cd.respuesta = 'Si'
group by v.nombrecompleto
having AVG(cd.certidumbre) >= 0.5 
    and AVG(cd.certidumbre)<= 0.8;
