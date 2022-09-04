/*
Visualizar el numero de votantes de cada localidad con respecto a su situacion laboral.
Mostrar el numero total de votantes de cada localidad en una columna.
En las otras debe aparecer el numero total de votantes de dicha localidad segun su situacion laboral:
parado, activo, estudiante o jubilado
*/

select l.idlocalidad, 
       count(v.situacionlaboral) "totalVotantes", 
       (select count(v.situacionlaboral)
            from votantes v, localidades a 
            where v.localidad = a.idlocalidad and a.idlocalidad = l.idlocalidad 
                and v.situacionlaboral = 'Parado'
        ) "TotalParados", 
        ( select count(v.situacionlaboral)
            from votantes v, localidades a 
            where v.localidad = a.idlocalidad and a.idlocalidad = l.idlocalidad 
            and v.situacionlaboral = 'Activo'
        ) "TotalActivos", 
        ( select count(v.situacionlaboral)
            from votantes v, localidades a 
            where v.localidad = a.idlocalidad and a.idlocalidad = l.idlocalidad 
            and v.situacionlaboral = 'Estudiante'
        ) "TotalEstudiantes", 
        ( select count(v.situacionlaboral)
            from votantes v, localidades a 
            where v.localidad = a.idlocalidad and a.idlocalidad = l.idlocalidad 
            and v.situacionlaboral = 'Jubilado'
        ) "TotalJubilados"
from votantes v, localidades l 
where v.localidad = l.idlocalidad
group by l.idlocalidad;