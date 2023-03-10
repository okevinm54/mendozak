DROP DATABASE IF EXISTS tienda2;
CREATE DATABASE tienda2 CHARACTER SET utf8mb4;
USE tienda2;

CREATE TABLE fabricante2 (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto2 (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  id_fabricante2 INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_fabricante2) REFERENCES fabricante2(id)
);

INSERT INTO fabricante2 VALUES(1, 'Asus');
INSERT INTO fabricante2 VALUES(2, 'Lenovo');
INSERT INTO fabricante2 VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante2 VALUES(4, 'Samsung');
INSERT INTO fabricante2 VALUES(5, 'Seagate');
INSERT INTO fabricante2 VALUES(6, 'Crucial');
INSERT INTO fabricante2 VALUES(7, 'Gigabyte');
INSERT INTO fabricante2 VALUES(8, 'Huawei');
INSERT INTO fabricante2 VALUES(9, 'Xiaomi');

INSERT INTO producto2 VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto2 VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto2 VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto2 VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto2 VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto2 VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto2 VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto2 VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto2 VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto2 VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto2 VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);