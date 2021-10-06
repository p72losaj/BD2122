/* Ejercicio2: Obtener el dni de todos los votantes con al menos tres 5 en su DNI */

select dni from votantes where dni like '%5%5%5%';