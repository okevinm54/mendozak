/*Hacer una copia de la BD tienda en tienda2 (Data export/Data import).
2. Almacena en la BD los datos del nuevo fabricante Logitech con el que se
ha cerrado un acuerdo para vender cámaras Logitech C920 HD Pro
Webcam a un precio de 69 euros.
3. El fabricante Crucial ha aumentado  10 euros todos sus productos.
4. Todos los productos con precio > 100 euros deben subir de precio un
16%.
5. Asus desea que sus productos estén identificados por el nombre de la
marca al final.
6. Samsung dejará de trabajar con la empresa y por lo tanto no es
necesario seguir conservando su información.
7. Disminuya el precio en 10 unidades de los productos cuyo precio menor
que el precio más caro de Crucial*/


use tienda2;
insert into fabricante2 values (10, 'Logitech');
select * from fabricante2;
insert into fabricante2 set nombre='IBM';
select * from producto2;
update producto2 set precio=precio+10 where id_fabricante=(select id from fabricante2 where nombre="crucial");
show variables like "sql_safe_updates";
update producto2 set precio=precio*1.16 where precio>100;
set sql_safe_updates=0;
set sql_safe_updates=1;
update producto2 set p.nombre=concat(p.nombre, " , " "asus") where  id_fabricante2=(select id from fabricante2 where nombre="crucial");
delete from fabricante2 where nombre="samsung";
delete from producto2 where id_fabricante=(select id from fabricante2 where nombre="samsung");
update producto set precio=precio-10 where precio<(select p.precio, f.nombre from producto2 p join fabricante2 f on p.id_fabricante=f.id where f.nombre="crucial" order by p.precio desc limit 1);