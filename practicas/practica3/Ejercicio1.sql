/*
Obtener el nombre de todos los votantes cuyo DNI acaba igual que el
identificador de su localidad más 1
*/

select v.nombrecompleto
from votantes v
where substr(v.dni,length(v.dni),1) = v.localidad+1;