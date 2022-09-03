-- Obtener el nombre de aquellos votantes cuya fecha de nacimiento sea
-- posterior al 1 de Enero de 1990.

select nombrecompleto 
from votantes 
where fechanacimiento > '1/1/90';