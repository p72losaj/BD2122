/*
Mostrar el nombre completo de los votantes cuyo telefono acaba igual que su dni
*/

select nombrecompleto
from votantes
where SUBSTR(dni,LENGTH(dni),LENGTH(dni)) = 
    SUBSTR(telefono,length(telefono),length(telefono));