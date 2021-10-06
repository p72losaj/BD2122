/**
Ejercicio 10: Realiza la concatenacion del nombre del evento y su tipo
*/

select nombre || ' de tipo ' || tipo as "Convocatoria" from eventos;

/** Concatenamos las columnas de la tabla eventos */

select 
'El evento ' || nombre || ' cuyo identificador es ' || idevento
|| ' y detalle es ' || detalle || ', es de tipo ' || tipo
|| ' y se realizo el ' || fecha as "Informacion del evento"
from eventos;

/**Obtenemos toda la informacion sobre las consultas */

select 
' En la fecha ' || e.fecha
|| ' se realizo un evento, de nombre ' || e.nombre
|| ' ( la consulta del evento se realizo el ' || c.fecha
|| ' ), de tipo ' || e.tipo
|| ' y cuyos detalles son ' || e.detalle
|| '. En dicho evento, el partido <' || p.nombrecompleto || '>'
|| '(<' || p.siglas || '>' || ') gano con un resultado de <' || er.resultado
|| '>' || '. Dicho partido tiene su sede en la direccion <' || p.direccion
|| '>' || ' (<' || p.ciudad || '>,<' || pv.comunidad || '>). Se fundo en <'
|| p.fechacreacion || '>, su presidente actual es <' || p.presidente
|| '> y posee un presupuesto de <' || p.presupuesto || '>. '
|| ' La provincia <' || pv.comunidad || '> tiene una poblacion de <'
|| pv.numerohabitantes || '>, de cuya poblacion viven en <'
|| l.nombre || '> un numero de <' || l.numerohabitantes
|| '> habitantes. La victoria del <' 
|| p.nombrecompleto || '> en dichas elecciones fue gracias al voto de <' 
|| v.nombrecompleto || '>, quien indico en su voto la respuesta <' 
|| cd.respuesta || '> con una incertidumbre sobre 1 de <' 
|| cd.certidumbre || 
'Este votante nacio en <' || l.nombre  || '>, en la comunidad de <'
 || pv.comunidad || '>, realizo un estudio superior (' 
|| v.estudiossuperiores || '>). Su direccion de correo electronico es <' 
|| v.email || '>, su situacion laboral es <' || v.situacionlaboral 
|| '>, nacio el <' || v.fechanacimiento || '>, su dni es <' || v.dni 
|| '> y su numero de telefono es <' || v.telefono || '>.'
as "Eventos"
from eventos e, eventos_resultados er, partidos p, localidades l,
provincias pv, consultas c, consultas_datos cd, votantes v
where e.idevento = er.evento
and er.partido = p.idpartido
and l.provincia = pv.idprovincia
and v.dni = c.votante
and v.localidad = l.idlocalidad
;

select * from votantes;
