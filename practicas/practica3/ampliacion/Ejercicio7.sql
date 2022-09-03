/**

Ejercicio 7
Mostrar el nombre de las localidades ordenadas de mayor a menor nivel de
estudiosSuperiores medio de sus votantes.
*/

select distinct l.nombre, AVG(decode ( v.estudiossuperiores, 'Ninguno',0,'Basicos',1,
'Doctorado',3,'Superiores',2, v.estudiossuperiores)) AS ESTUDIOS
from votantes v, localidades l
where v.localidad = l.idlocalidad
group by l.nombre
order by ESTUDIOS desc;