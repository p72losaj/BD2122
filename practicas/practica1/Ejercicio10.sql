/*
Realizar la concatenación del nombre del evento y su tipo, de manera que sólo se mostrará
lo que se muestra más abajo. El nombre de la columna será “Convocatoria”.
*/

SELECT NOMBRE || ' de tipo ' || TIPO "Convocatoria"
FROM EVENTOS;