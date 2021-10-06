/**
Ejercicio 5-6-7: Realizar la insercion en la tabla votantes de los datos:
    dni: 30653845
    nombreCompleto: Maria Gonzalez Ramirez
    estudiosSuperiores: Doctorado
    situacionLaboral: Activo
    email: goram@telefonica.es
    localidad: 1
    fechaNacimiento: 21 de Agosto de 1989
    telefono: 677544822
*/

insert into votantes values
( 
 30653845, 'Maria Gonzalez Ramirez', 'Doctorado', 'Activo',
 'goram@telefonica.es', 1, '21/8/1989', 677544822
);

/** Comprobamos que todos los cambios han sido insertados correctamente */

select * from votantes;

/** Borramos la insercion realizada */

delete from votantes where dni = 30653845;

