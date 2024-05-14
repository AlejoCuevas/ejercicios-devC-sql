drop database if exists almacenes;
create database almacenes;
use almacenes;

create table almacen(
Codigo int,
Lugar varchar(100),
Capacidad int,
constraint PK_Codigo primary key (Codigo)
);

create table cajas(
NumRef varchar(5),
Contenido varchar(100),
Valor int,
Almacen int,
constraint PK_NumRef primary key (NumRef),
constraint FK_Almacen foreign key (Almacen) references almacen(Codigo)
);

insert into almacen values
(1,"CABA Lascano 1500",2000),
(2,"Segurola 1700",5000),
(3,"Mercedes 1200",200),
(4,"CABA Camarones 1200",100),
(5,"Sanabria 2500",10000),
(6,"Juan B Justo 4000",50000),
(7,"Av Alvarez Jonte 1500",1400),
(8,"Remedios de Escalada de San Martin 1200",1700),
(9,"Tres Arroyos 4800",1600),
(10,"Gaona 1200",1900);

insert into cajas values
("Fid","Fideos",170,1),
("Ver","Verduras",205,2),
("Car","Carnes",400,3),
("Gall","Galletitas",115,4),
("Golo","Golosinas",150,5),
("Lec","Leche",210,6),
("Agua","Aguas",105,7),
("Gas","Gaseosas",165,8),
("Pol","Pollos",300,9),
("Ques","Quesos",220,10);



select * from almacen;
+--------+-----------------------------------------+-----------+
| Codigo | Lugar                                   | Capacidad |
+--------+-----------------------------------------+-----------+
|      1 | CABA Lascano 1500                       |      2000 |
|      2 | Segurola 1700                           |      5000 |
|      3 | Mercedes 1200                           |       200 |
|      4 | CABA Camarones 1200                     |       100 |
|      5 | Sanabria 2500                           |     10000 |
|      6 | Juan B Justo 4000                       |     50000 |
|      7 | Av Alvarez Jonte 1500                   |      1400 |
|      8 | Remedios de Escalada de San Martin 1200 |      1700 |
|      9 | Tres Arroyos 4800                       |      1600 |
|     10 | Gaona 1200                              |      1900 |
+--------+-----------------------------------------+-----------+
10 rows in set (0.000 sec)

MariaDB [almacenes]> select * from cajas;
+--------+------------+-------+---------+
| NumRef | Contenido  | Valor | Almacen |
+--------+------------+-------+---------+
| Agua   | Aguas      |   105 |       7 |
| Car    | Carnes     |   400 |       3 |
| Fid    | Fideos     |   170 |       1 |
| Gall   | Galletitas |   115 |       4 |
| Gas    | Gaseosas   |   165 |       8 |
| Golo   | Golosinas  |   150 |       5 |
| Lec    | Leche      |   210 |       6 |
| Pol    | Pollos     |   300 |       9 |
| Ques   | Quesos     |   220 |      10 |
| Ver    | Verduras   |   205 |       2 |
+--------+------------+-------+---------+
10 rows in set (0.000 sec)

/* Obtener todos los almacenes */

select * from almacen;
+--------+-----------------------------------------+-----------+
| Codigo | Lugar                                   | Capacidad |
+--------+-----------------------------------------+-----------+
|      1 | CABA Lascano 1500                       |      2000 |
|      2 | Segurola 1700                           |      5000 |
|      3 | Mercedes 1200                           |       200 |
|      4 | CABA Camarones 1200                     |       100 |
|      5 | Sanabria 2500                           |     10000 |
|      6 | Juan B Justo 4000                       |     50000 |
|      7 | Av Alvarez Jonte 1500                   |      1400 |
|      8 | Remedios de Escalada de San Martin 1200 |      1700 |
|      9 | Tres Arroyos 4800                       |      1600 |
|     10 | Gaona 1200                              |      1900 |
+--------+-----------------------------------------+-----------+


/* Obtener todas las cajas cuyo contenido tenga un valor superior a 150 */

select *
from cajas
where valor>150;
+--------+-----------+-------+---------+
| NumRef | Contenido | Valor | Almacen |
+--------+-----------+-------+---------+
| Car    | Carnes    |   400 |       3 |
| Fid    | Fideos    |   170 |       1 |
| Gas    | Gaseosas  |   165 |       8 |
| Lec    | Leche     |   210 |       6 |
| Pol    | Pollos    |   300 |       9 |
| Ques   | Quesos    |   220 |      10 |
| Ver    | Verduras  |   205 |       2 |
+--------+-----------+-------+---------+

/* Obtener el promedio de todas las cajas de cada almacen */

select almacen, avg(valor)
from cajas
group by almacen;
+---------+------------+
| almacen | avg(valor) |
+---------+------------+
|       1 |   170.0000 |
|       2 |   205.0000 |
|       3 |   400.0000 |
|       4 |   115.0000 |
|       5 |   150.0000 |
|       6 |   210.0000 |
|       7 |   105.0000 |
|       8 |   165.0000 |
|       9 |   300.0000 |
|      10 |   220.0000 |
+---------+------------+
10 rows in set (0.006 sec)

/* Obtener los codigos de los almacenes en los cuales el valor medio de las cajas sea superior a 150 */

select almacen, avg(valor)
from cajas
group by almacen
having avg(valor)>150;
+---------+------------+
| almacen | avg(valor) |
+---------+------------+
|       1 |   170.0000 |
|       2 |   205.0000 |
|       3 |   400.0000 |
|       6 |   210.0000 |
|       8 |   165.0000 |
|       9 |   300.0000 |
|      10 |   220.0000 |
+---------+------------+
7 rows in set (0.000 sec)

/* Obtener el numero de referencia de cada caja. Con el nombre del lugar donde se encuentra. */

select almacen.lugar, cajas.numref
from almacen, cajas
where almacen.codigo=cajas.almacen;
+-----------------------------------------+--------+
| lugar                                   | numref |
+-----------------------------------------+--------+
| CABA Lascano 1500                       | Fid    |
| Segurola 1700                           | Ver    |
| Mercedes 1200                           | Car    |
| CABA Camarones 1200                     | Gall   |
| Sanabria 2500                           | Golo   |
| Juan B Justo 4000                       | Lec    |
| Av Alvarez Jonte 1500                   | Agua   |
| Remedios de Escalada de San Martin 1200 | Gas    |
| Tres Arroyos 4800                       | Pol    |
| Gaona 1200                              | Ques   |
+-----------------------------------------+--------+
10 rows in set (0.000 sec)
/* Obtener el numero de cajas que hay en cada almacen */

select count(numref)
from cajas;
+---------------+
| count(numref) |
+---------------+
|            10 |
+---------------+

/* Obtener los codigos de los almacenes que estan saturados (los almacenes donde el numero de cajas es superior a la capacidad */

select almacen.codigo, almacen.capacidad, cajas.valor
from almacen, cajas
where almacen.codigo=cajas.almacen and valor = (select valor from cajas where almacen.codigo=cajas.almacen
and valor>capacidad);
+--------+-----------+-------+
| codigo | capacidad | valor |
+--------+-----------+-------+
|      3 |       200 |   400 |
|      4 |       100 |   115 |
+--------+-----------+-------+
2 rows in set (0.008 sec)

/* Obtener los numeros de referencia de las cajas que estan en CABA */

select cajas.numref, almacen.lugar
from cajas, almacen
where almacen.codigo=cajas.almacen and lugar = (select lugar from almacen where almacen.codigo=cajas.almacen and lugar like "CABA%");
+--------+---------------------+
| numref | lugar               |
+--------+---------------------+
| Fid    | CABA Lascano 1500   |
| Gall   | CABA Camarones 1200 |
+--------+---------------------+
2 rows in set (0.001 sec)

/* Rebajar el valor de todas las cajas un 15% */

update cajas
set valor = valor - valor*0.15;
Query OK, 10 rows affected (0.054 sec)
Rows matched: 10  Changed: 10  Warnings: 0

/* Eliminar todas las cajas cuyo valor sea inferior a 100 */

delete
from cajas
where valor<100;
Query OK, 2 rows affected (0.081 sec)

select *
from cajas
where valor<100;
Empty set (0.000 sec)

/* Insertar un nuevo almacen con capacidad para 3 cajas en CABA */

insert into almacen values
(11,"CABA Baigorria 1500",3);
Query OK, 1 row affected (0.044 sec)