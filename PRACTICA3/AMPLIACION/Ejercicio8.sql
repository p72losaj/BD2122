/**

Ejercicio 8: Mostrar aquellas localidades cuyos votantes tienen un nivel de estudiosSuperiores medio
mayor que todas las medias de estudiosSuperiores de las provincias.

*/

select distinct l.nombre
from votantes v, localidades l
where v.localidad = l.idlocalidad
group by l.nombre
HAVING AVG(decode ( v.estudiossuperiores, 'Ninguno',0,'Basicos',1,
'Doctorado',3,'Superiores',2, v.estudiossuperiores)) > ALL(
select distinct AVG(
decode (
v.estudiossuperiores,'Ninguno',0,'Basicos',1,'Superiores',2,'Doctorado',3,
v.estudiossuperiores
)
)
from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad 
and l.provincia = p.idprovincia
)
;
