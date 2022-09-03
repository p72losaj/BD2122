-- Obtener el DNI de todos los votantes que tengan al menos tres 5s en su DNI

select dni 
from votantes 
where dni like '%5%5%5%';