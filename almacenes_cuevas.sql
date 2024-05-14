drop database if exists almacen;
create database almacen;
use almacen;


create table almacen(
Codigo int,
lugar nvarchar(100),
capacidad int,
constraint PK_Codigo primary key (Codigo)
);

create table Cajas(
NumReferencia char(5),
Contenido nvarchar(100),
valor int,
almacen int,
constraint PK_NumReferencia primary key (NumReferencia),
constraint FK_almacen foreign key (almacen) references almacen(codigo)
);

insert into almacen values
(1,"Entre Rios",3),
(2,"Buenos Aires",1),
(3,"Mendoza",2),
(4,"Misiones",2),
(5,"Cordoba",2);

insert into cajas values
("RJ45","Herramientas",16000,1),
("RJ46","Huevos",100,1),
("RJ47","Manzana",50,1),
("RJ48","Banana",90,1),
("RJ49","Pera",80,1),
("RJ50","Heladera",25000,1),
("RJ51","Aire Acondicionado",50000,1),
("RJ52","Teclado",1500,2),
("RJ53","Mouse",2000,2),
("RJ54","Auriculares",5000,3),
("RJ55","Monitor", 20000, 3),
("RJ56","Microfono", 3000, 4),
("RJ57","Cuchillo", 300, 4),
("RJ58","Tenedor", 300, 5),
("RJ59","Cuchara", 300, 5);

select almacen.*, cajas.*
from almacen, cajas
where almacen.codigo = cajas.almacen;
+--------+--------------+-----------+---------------+--------------------+-------+---------+
| Codigo | lugar        | capacidad | NumReferencia | Contenido          | valor | almacen |
+--------+--------------+-----------+---------------+--------------------+-------+---------+
|      1 | Entre Rios   |         3 | RJ45          | Herramientas       | 16000 |       1 |
|      1 | Entre Rios   |         3 | RJ46          | Huevos             |   100 |       1 |
|      1 | Entre Rios   |         3 | RJ47          | Manzana            |    50 |       1 |
|      1 | Entre Rios   |         3 | RJ48          | Banana             |    90 |       1 |
|      1 | Entre Rios   |         3 | RJ49          | Pera               |    80 |       1 |
|      1 | Entre Rios   |         3 | RJ50          | Heladera           | 25000 |       1 |
|      1 | Entre Rios   |         3 | RJ51          | Aire Acondicionado | 50000 |       1 |
|      2 | Buenos Aires |         1 | RJ52          | Teclado            |  1500 |       2 |
|      2 | Buenos Aires |         1 | RJ53          | Mouse              |  2000 |       2 |
|      3 | Mendoza      |         2 | RJ54          | Auriculares        |  5000 |       3 |
|      3 | Mendoza      |         2 | RJ55          | Monitor            | 20000 |       3 |
|      4 | Misiones     |         2 | RJ56          | Microfono          |  3000 |       4 |
|      4 | Misiones     |         2 | RJ57          | Cuchillo           |   300 |       4 |
|      5 | Cordoba      |         2 | RJ58          | Tenedor            |   300 |       5 |
|      5 | Cordoba      |         2 | RJ59          | Cuchara            |   300 |       5 |
+--------+--------------+-----------+---------------+--------------------+-------+---------+

select numreferencia from cajas where valor > 150;
+---------------+
| numreferencia |
+---------------+
| RJ45          |
| RJ50          |
| RJ51          |
| RJ52          |
| RJ53          |
| RJ54          |
| RJ55          |
| RJ56          |
| RJ57          |
| RJ58          |
| RJ59          |
+---------------+
11 rows in set (0.010 sec)

select contenido from cajas;
+--------------------+
| contenido          |
+--------------------+
| Herramientas       |
| Huevos             |
| Manzana            |
| Banana             |
| Pera               |
| Heladera           |
| Aire Acondicionado |
| Teclado            |
| Mouse              |
| Auriculares        |
| Monitor            |
| Microfono          |
| Cuchillo           |
| Tenedor            |
| Cuchara            |
+--------------------+
15 rows in set (0.000 sec)

select almacen.codigo, cajas.numreferencia, avg(valor)
from almacen, cajas
where almacen.codigo = cajas.almacen
group by almacen.codigo;
+--------+---------------+------------+
| codigo | numreferencia | avg(valor) |
+--------+---------------+------------+
|      1 | RJ45          | 13045.7143 |
|      2 | RJ52          |  1750.0000 |
|      3 | RJ54          | 12500.0000 |
|      4 | RJ56          |  1650.0000 |
|      5 | RJ58          |   300.0000 |
+--------+---------------+------------+
5 rows in set (0.001 sec)

select almacen.codigo, cajas.numreferencia, avg(valor)
from almacen, cajas
where almacen.codigo = cajas.almacen
group by almacen.codigo
having avg(valor) > 15000;
Empty set (0.000 sec)

 /* Me tira empty set con 15000 porque no tengo promedios mayores a 15000, abajo hay uno de 10000. */

select almacen.codigo, cajas.numreferencia, avg(valor)
from almacen, cajas
where almacen.codigo = cajas.almacen
group by almacen.codigo
having avg(valor) > 10000;
+--------+---------------+------------+
| codigo | numreferencia | avg(valor) |
+--------+---------------+------------+
|      1 | RJ45          | 13045.7143 |
|      3 | RJ54          | 12500.0000 |
+--------+---------------+------------+
2 rows in set (0.000 sec)




select cajas.numreferencia, almacen.lugar
from almacen, cajas
where almacen.codigo = cajas.almacen
group by cajas.numreferencia;
+---------------+--------------+
| numreferencia | lugar        |
+---------------+--------------+
| RJ45          | Entre Rios   |
| RJ46          | Entre Rios   |
| RJ47          | Entre Rios   |
| RJ48          | Entre Rios   |
| RJ49          | Entre Rios   |
| RJ50          | Entre Rios   |
| RJ51          | Entre Rios   |
| RJ52          | Buenos Aires |
| RJ53          | Buenos Aires |
| RJ54          | Mendoza      |
| RJ55          | Mendoza      |
| RJ56          | Misiones     |
| RJ57          | Misiones     |
| RJ58          | Cordoba      |
| RJ59          | Cordoba      |
+---------------+--------------+
15 rows in set (0.000 sec)

select almacen.codigo, count(cajas.numreferencia)
from almacen, cajas
where almacen.codigo = cajas.almacen
group by almacen.codigo;
+--------+----------------------------+
| codigo | count(cajas.numreferencia) |
+--------+----------------------------+
|      1 |                          7 |
|      2 |                          2 |
|      3 |                          2 |
|      4 |                          2 |
|      5 |                          2 |
+--------+----------------------------+
5 rows in set (0.000 sec)

select codigo
from almacen
where capacidad < (select count(cajas.numreferencia) from cajas where almacen.codigo = cajas.almacen);
+--------+
| codigo |
+--------+
|      1 |
|      2 |
+--------+
2 rows in set (0.002 sec)

select cajas.numreferencia, almacen.lugar
from cajas, almacen
where cajas.almacen = almacen.codigo
having almacen.lugar = "Entre Rios";
+---------------+------------+
| numreferencia | lugar      |
+---------------+------------+
| RJ45          | Entre Rios |
| RJ46          | Entre Rios |
| RJ47          | Entre Rios |
| RJ48          | Entre Rios |
| RJ49          | Entre Rios |
| RJ50          | Entre Rios |
| RJ51          | Entre Rios |
+---------------+------------+
7 rows in set (0.000 sec)

insert into cajas values
("H5RT","Papel",2000, 2);
Query OK, 1 row affected (0.003 sec)

