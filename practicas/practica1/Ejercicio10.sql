/*
Realizar la concatenaci�n del nombre del evento y su tipo, de manera que s�lo se mostrar�
lo que se muestra m�s abajo. El nombre de la columna ser� �Convocatoria�.
*/

SELECT NOMBRE || ' de tipo ' || TIPO "Convocatoria"
FROM EVENTOS;