/*
Mostrar el nombre completo de aquellos votantes que contienen al menos una 'S' 
y cuya fecha de nacimiento es anterior al 12 de Febrero de 1990.
*/

select nombrecompleto 
from votantes
where nombrecompleto like '%s%'
    and fechanacimiento < '12/02/90';