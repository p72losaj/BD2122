/*
Obtener el nombre de los votantes cuya participación ha sido mayor que la
media de participaciones de todos los votantes
*/

select v.nombrecompleto
from votantes v, consultas c
where v.dni = c.votante
group by v.nombrecompleto
having count(c.idconsulta) > (select AVG(count(c.idconsulta))
                                from votantes v, consultas c
                                where v.dni = c.votante
                                group by c.votante);