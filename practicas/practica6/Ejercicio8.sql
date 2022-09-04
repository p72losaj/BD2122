/*
Elabore un procedimiento para controlar el tipo de
correo asociado a los votantes. Para ser considerados
validos, los correos tendran algunas particularidades.
La primera esta relacionada con el alias (antes del ‘@’).
En esta parte el correo debe contar exactamente con
dos letras ‘a’ (no puede haber menos ni mas). Ademas,
tras el ‘@’ y antes del ‘.’ se debe contar con una de
las siguientes extensiones: “uco”, “gmail”, “hotmail”.
Cualquiera que no sea una de esas extensiones hara
que el correo se considere invalido. Para finalizar, tras
el ‘.’ debe existir al menos una letra mas.
Nota: Cuando se anada el constraint, para que los correos ya introducidos en la tabla
que no cumplan esta restriccion no den problemas, hay que anadir al final de la l?nea
‘ENABLE NOVALIDATE’
*/

alter table votantes add constraint ck_ej8 
check( (email like '%a%a%@gmail._' or email like '%a%a%@.uco_' or email like '%a%a%@.hotmail_')
and email not like '%a%a%a%a%') 
enable novalidate;