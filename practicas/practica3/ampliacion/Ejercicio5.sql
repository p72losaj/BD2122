/**
Ejercicio 5: Muestra el nombre de las localidades, su número de habitantes y el nombre de la comunidad
a la que pertenecen. Se recogerán sólo aquellas localidades cuyo número de provincia sea el
1, 2, o 3 y que tengan mayor número de habitantes que alguna de las localidades de la
provincia número 4.
*/

select distinct(l.nombre), l.numerohabitantes,p.comunidad
from localidades l, provincias p
where l.provincia in (1,2,3) 
and l.provincia = p.idprovincia
and l.numerohabitantes > ANY (select l.numerohabitantes from localidades l 
where l.provincia = 4);

/** Localidades con un numero mayor de habitantes que alguna de las localidades 
de la provincia numero 4 */

/**
select l.nombre 
from localidades l 
where l.numerohabitantes > ANY (select l.numerohabitantes from localidades l 
where l.provincia = 4);
*/

/* Obtenemos las localidades de la provincia numero 4 */

/* select l.nombre from localidades l where l.provincia = 4; */