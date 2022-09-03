/**
Mostrar aquella localidad cuyo numero de habitantes acaba igual
que su numero de provincia, mostrando tambien el nombre de la provincia a la que 
pertenece*/

select l.nombre as "Localidad", p.nombre as "provincia"
from provincias p, localidades l
where l.provincia=p.idprovincia
    and l.provincia = 
        SUBSTR(l.numerohabitantes,LENGTH(l.numerohabitantes),LENGTH(l.numerohabitantes));
