/*
Restrinja que el tipo de los eventos deban comenzar con letra inicial mayuscula 
y debe terminar en ‘s’.
De no cumplirse, debera impedir que se inserte en la
tabla.
Primero hay que deshabilitar CK_NOMBRE durante este ejercicio
*/
alter table eventos disable constraint CK_NOMBRE;
alter table eventos add constraint ck_ej5 
    check (substr(tipo,1,1) >= 'A' and substr(tipo,1,1) <= 'Z' and tipo like '%s');

alter table eventos enable constraint CK_NOMBRE;