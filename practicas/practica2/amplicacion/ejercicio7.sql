/*
Mostrar el dni de aquellos votantes que han participado en mas de tres consultas
*/

select v.dni
from votantes v, consultas c
where v.dni = c.votante
group by v.dni
having COUNT(c.votante) > 3;