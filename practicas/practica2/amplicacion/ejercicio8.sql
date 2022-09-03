/*
Mostrar el nombre completo de los votantes que han participado en 
mas de tres consultas y especificar en cuantas consultas participaron  
(en orden creciente)
*/

select DISTINCT v.nombrecompleto, SUM(c.idconsulta) as "Numero Consultas"
from votantes v, consultas c
where v.dni = c.votante
group by v.nombrecompleto
having count(c.idconsulta) > 3
order by nombrecompleto asc;