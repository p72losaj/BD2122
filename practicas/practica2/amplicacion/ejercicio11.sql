/*
Mostrar el nombre del votante y su certidumbre media en todas 
las consultas en las que ha respondido de manera afirmativa
*/

select v.nombrecompleto, AVG(cd.certidumbre)
from votantes v, consultas_datos cd, consultas c
where v.dni = c.votante
    and c.idconsulta = cd.consulta
group by v.nombrecompleto;