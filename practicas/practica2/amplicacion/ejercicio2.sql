/**
Obtener el DNI de todos los votantes que tengan tres 6s en su 
telefono pero contemplar que no tienen mas de tres, dos de ellos deben estar juntos
*/

select dni,telefono 
from votantes 
where (telefono like '%66%6%' or telefono like '%6%66%')
    and telefono not like '%6%6%6%6%';
