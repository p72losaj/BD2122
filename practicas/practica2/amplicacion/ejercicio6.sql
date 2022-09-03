/*
Usar el operador DISTINCT. 
Obtener todos los votantes que han participado en alguna consulta. 
Dichos votantes deben aparecer en orden decreciente de dni  
*/


select DISTINCT v.dni
from votantes v, consultas c
where v.dni = c.votante
order by v.dni desc;