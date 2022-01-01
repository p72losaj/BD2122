/*
Ejercicio 8
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
*/

alter table votantes add constraint ck_8 check ( (correo like '%a%a%@uco._' or
correo like '%a%a%@gmail._' or correo like '%a%a%@hotmail._' )
and correo not like '%a%a%a%' );