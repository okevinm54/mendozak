//*Suponer que de la BD Centro estudios necesitamos obtener los siguientes 
campos:
De las asignaturas: Nombre, descripción, Horas y ciclo
Del profesor: Nombre y apellidos en una única columna.*/

use centroestudios;
select a.nombre,a.descripcion,a.horas,a.ciclo, concat(p.nombre,p.apellido) 
as "nombre profesor" from asignatura a join profesor p on a.profesor = p.dni;

create view asignatura_profesor as 
select a.nombre,a.descripcion,a.horas,a.ciclo, concat(p.nombre,p.apellido) 
as "nombre profesor" from asignatura a join profesor p on a.profesor = p.dni;


select nombre from asignatura_profesor where ciclo = 'DAM';


select * from profesor;
insert into profesor (dni,nombre,apellido,email,telefono) values ('65987452N','carlos','carlos.materos@gmail.com','652321452',null);

insert into profesor values ('Julia Pérez' 'DNI 1245784' 'email julia.perez@ufv.es', '698745487'),
('Blanca Sánchez', ' 54123654B','
b.sanchez@gmail.com','632145854',
'dirección Rúa Mayor, 15, Madrid'), 
('Pedro', ' 74854521L','652145487', '
pedro@gmail.com');



update asignatura set horas = horas+10 where ciclos = 'DAM';

SHOW VARIABLES LIKE 'SQL_SAFE_UPDATES';
SET SQL_SAFE_UPDATES=0;