use centroestudios;
select * from alumno;
select  * from alumno_asignatura;
select * from profesor;
select  * from asignatura;
select AVG(nota_1Ev) from alumno_asignatura where alumno='25469874X'; 
select max(nota_1ev) from alumno_asignatura where asignatura = "dam_bbdd";
select COUNT(*) AS 'No de alumnos matriculados', COUNT(nota_1Ev) AS 'No de alumnos con nota en la 1a EV', COUNT(nota_2Ev) AS 'No de alumnos con nota en la 2a EV' FROM alumno_asignatura WHERE asignatura = 'DAM_BBDD';
select count(*) - count(profesor) as "cant. asignaturas sin profesor" from asignatura;
select distinct ciclo from asignatura where profesor is not null;
select max(horas) from asignatura where profesor  is not null;
select max(distinct horas) from asignatura where profesor  is not null;
select profesor, COUNT(*) FROM asignatura GROUP BY profesor; 
select  profesor, count(*) from asignatura where ciclo = "dam" group by profesor; 
select asignatura avg(nota_1ev) as 'nota media 1ev',max(nota_1ev)as 'nota maxima 1ev',min(nota_1ev) as 'nota minima 1ev',
count(*) as "no alumno matriculados" from alumno_asignatura group  by asignatura;
select asignatura,avg(nota_1ev) as "nota media en 1ev" from alumno_asignatura group by asignatura having avg(nota_1Ev)<7;
select asignatura , count(*) from alumno_asignatura group by asignatura having count(*)>3;
select dni from profesor where nombre = "esmeralda" and apellido="sanz";
select nombre, curso,ciclo, profesor from asignatura where profesor="63254157c";
select nombre,curso,ciclo from asignatura where profesor =( select dni from profesor where nombre = "esmeralda" and apellido="sanz");
select * from alumno where fecha_nacimiento > (select fecha_nacimiento from alumno where email="david.moreno@yahoo.es");
select fecha_nacimiento from alumno where email="david.moreno@yahoo.es";
select nombre,apellido from alumno where dni  in (select alumno from alumno_asignatura where asignatura="dam_bbdd" and nota_1Ev > 5);
select alumno from alumno_asignatura where asignatura="dam_bbdd" and nota_1Ev > 5;
SELECT nombre, apellido FROM alumno WHERE dni IN (SELECT alumno FROM alumno_asignatura WHERE nota_1Ev >= 5 AND asignatura =(SELECT codigo FROM asignatura WHERE nombre='Bases de datos' AND ciclo='DAM' )) ORDER BY apellido, nombre; 
SELECT * FROM asignatura WHERE curso=2 AND ciclo ='DAM' AND horas > all (SELECT horas FROM asignatura WHERE curso=1 AND ciclo ='DAM');




