/*
Implemente una funcionalidad que no permita que
se inserten direcciones de correo invalidas en la tabla
VOTANTES. Para que sea una direccion valida debe
comenzar con una secuencia de caracteres (longitud >
0), seguido del caracter ‘@’, seguido de una secuencia de caracteres (longitud > 0), luego ‘.’, y finalmente
una secuencia de caracteres (longitud > 1). 
Puede asumir que en el caso del caracter ‘.’ solo aparecera como
maximo en 1 ocasion.
*/

alter table votantes add constraint ck_7 check(email like '_%@_%._%');