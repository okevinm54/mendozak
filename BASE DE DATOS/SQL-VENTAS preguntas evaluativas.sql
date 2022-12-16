//*1.	Devuelve un listado con todos los pedidos que se han realizado.
 Los pedidos deben estar ordenados por la fecha de realización,
 mostrando en primer lugar los pedidos más recientes.**//
//*2.	Devuelve un listado con los identificadores de los clientes que han realizado algún pedido.
 Tenga en cuenta que no debe mostrar identificadores que estén repetidos.**/
//*3.	Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, 
 cuya cantidad total sea superior a 500€.**/
//*4.	Devuelve un listado con el nombre y los apellidos
 de los comerciales que tienen una comisión entre 0.05 y 0.11.**/
//*5.	Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido
 no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.**/
//*6.	Devuelve un listado de los nombres de los clientes que no empiezan por
A. El listado deberá estar ordenado alfabéticamente.**/
//*7.	Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.*/
//*8.	Calcula el número total de comerciales distintos que aparecen en la tabla pedido.*/
//*9.	Calcula el número total de clientes que aparecen en la tabla cliente.*/
//*10.	Calcula cuál es la menor cantidad que aparece en la tabla pedido.*/
//*11.	Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales 
durante la fecha 2016-08-17. Muestra el identificador del comercial, nombre, apellidos y total.*/
//*12. Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos 
que ha realizado cada uno de clientes durante el año 2017.*/
//*13. Devuelve todos los datos de los dos pedidos de mayor valor.*/
//*14. Devuelve un listado que solamente muestre los datos de los	clientes que no han realizado ningún pedido.*/
//*15. Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente.
 El resultado debe mostrar todos los datos de los pedidos y del cliente.
 El listado debe mostrar los datos de los clientes ordenados alfabéticamente.*/
 //*16.	Devuelve el valor total de todos los pedidos atendidos por el comercial Daniel Sáez Vega.*/
 //*17.	Devuelve un listado con los datos de todos los clientes que realizaron un pedido durante el año 2017,
 cuya cantidad esté entre 300 € y 1000 €.*/
 //*18.	Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega.*/
 
 
 
use ventas;
select*from pedido order by  fecha desc;
select distinct id_cliente from pedido;
select * from pedido where fecha between "2017-01-10" and "2017-12-31" and total > 500;
select nombre,apellido1,apellido2 from comercial where comisión between 0.05 and 0.11;
select id,nombre,apellido1 from cliente where apellido2 is not null order by nombre asc, apellido1 asc;
 SELECT nombre FROM cliente WHERE nombre LIKE 'A%n' OR nombre ORDER BY nombre ASC;
 select count(id) from pedido;
 select count(distinct pedido.id_comercial) from pedido join comercial on pedido.id_comercial = comercial.id;
 select count(id) from cliente;
 select min(total) from pedido;
 select count(pedido.fecha), clientcomercialcomerciale.id,cliente.nombre,cliente.apellido1,cliente.apellido2,pedido.total from pedido join cliente on pedido.id_cliente = cliente.id where pedido.fecha ="2018-08-17" group by cliente.nombre,pedido.fecha; 
 select cliente.id,cliente.nombre,cliente.apellido1,cliente.apellido2,count(pedido.fecha) from pedido join cliente on pedido.id_cliente = cliente.id where pedido.fecha between "2017-01-01" and  "2017-12-31" group by pedido.fecha;
 select * from pedido order by total  desc limit 2;
 select cliente.* from pedido right join cliente on cliente.id = pedido.id_cliente where pedido.id_cliente is null;
 select * from comercial join pedido on comercial.id = pedido.id_comercial order by comercial.nombre asc;
 select distinct cliente.nombre from comercial join pedido on comercial.id = pedido.id_comercial  join cliente on cliente.id = pedido.id_cliente where comercial.nombre like "daniel" and comercial.apellido1 like "saez" and comercial.apellido2 like"vega";
 select cliente. * from cliente join pedido on cliente.id = pedido.id_cliente where pedido.fecha between "2017-01-01" and "2017-12-31"  and total between 300 and 1000;
 SELECT count(*) FROM pedido WHERE id_comercial = (SELECT id FROM comercial WHERE nombre = 'Daniel' AND apellido1 = 'Sáez' AND apellido2 = 'Vega');