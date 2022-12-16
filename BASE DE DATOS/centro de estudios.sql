select * from profesor join asignatura;
select * from profesor;
select * from asignatura;
SELECT * FROM profesor LEFT JOIN asignatura ON dni = profesor;
select p.nombre apellido from profesor p join asignatura  a on  p.dni=a.profesor order by horas desc limit 1;
select p.nombre apellido ,max(horas) from profesor p join asignatura a on p.dni=a.profesor;
SELECT * FROM profesor LEFT JOIN asignatura ON dni = profesor;
SELECT * FROM profesor RIGHT JOIN asignatura ON dni = profesor;