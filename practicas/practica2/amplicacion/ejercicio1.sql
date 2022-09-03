/** 
Obtener el DNI de todos los votantes que tengan dos 6s en su 
telefono pero contemplar que no tienen mas de tres 
*/

select dni,telefono 
from votantes 
where telefono like '%6%6%' 
    and telefono not like '%6%6%6%';