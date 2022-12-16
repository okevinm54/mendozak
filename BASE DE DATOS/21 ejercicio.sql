1.	Diseñar el DER relacionado. 
2.	Muestra el contenido de todas las tablas y fija su resultado en pantalla. 
3.	Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes. 
4.	Devuelve todos los datos de los dos pedidos de mayor valor. 
5.	Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos. 
6.	Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad total sea superior a 500€. 
7.	Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11. 
8.	Devuelve el valor de la  comisión de mayor valor que existe en la tabla comercial. 
9.	Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre. 
10.	Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P. El listado deberá estar ordenado alfabéticamente. 
11.	Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente. 
12.	Devuelve un listado con los nombres de los comerciales que terminan con la letra o. 
Tenga en cuenta que se deberán eliminar los nombres repetidos


use ventas;
select * from cliente;
select * from comercial;
select * from pedido;
select  * from cliente,comercial,pedido;
select  * from pedido order by fecha desc;
select * from pedido order by total desc limit 5;
select distinct id_cliente from pedido;
select * from pedido where year(fecha)=2017 and total > 500;
select nombre,apellido1,apellido2 from comercial where comisión between 0.05 and 0.11;
select max(comisión) from comercial;
select id,nombre,apellido1 from cliente where apellido2 is not null order by nombre asc, apellido1 asc;
select nombre from cliente where nombre like "A%n" or nombre like "P%" order by nombre asc;
select distinct nombre from comercial where nombre like "%o";





use ventas;
select distinct nombre,apellido1,apellido2 from comercial join pedido on comercial.id = id_comercial;

