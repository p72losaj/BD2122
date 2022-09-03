-- Obtener el nombre de todos los votantes cuyo segundo apellido acaba en “n”

SELECT nombrecompleto
FROM VOTANTES
where nombrecompleto like '% % %n';