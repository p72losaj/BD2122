/* 
Crea una restriccion para que no se inserten email invalidos.
Los emails de los votantes deben tener antes del @ uno o mas caracteres.
Entre el @ y el . debe haber uno o mas caracteres (asumiendo que solo puede haber un . en el email)
y que despues del . haya al menos 2 caracteres
*/

alter table votantes add constraint ck_email check(email like '%_@_%._%');

alter table votantes drop constraint ck_email;