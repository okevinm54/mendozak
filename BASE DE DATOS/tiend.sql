use tienda;
select * from fabricante;
select * from producto;
select producto.nombre,precio,fabricante.nombre from producto join fabricante on id_fabricante=fabricante.id;
select producto.nombre,precio,fabricante.nombre from producto join fabricante on id_fabricante=fabricante.id order by precio desc limit 1;
select producto.nombre,min(precio),fabricante.nombre from producto join fabricante on id_fabricante=fabricante.id order by precio desc limit 1;
select producto.nombre,precio,fabricante.nombre from producto join fabricante on id_fabricante=fabricante.id where fabricante.nombre like '%w%';
