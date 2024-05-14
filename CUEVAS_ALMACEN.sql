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

select avg(valor) as cajas
    -> from cajas;
+----------+
| cajas    |
+----------+
| 204.0000 |
+----------+

/* Obtener los codigos de los almacenes en los cuales el valor medio de las cajas sea superior a 150 */

select almacen, avg(valor)
from cajas
where valor>150;
+---------+------------+
| almacen | avg(valor) |
+---------+------------+
|       3 |   238.5714 |
+---------+------------+

/* Obtener el numero de referencia de cada caja. Con el nombre del lugar donde se encuentra. */

select a.lugar, b.numref
from almacen a, cajas b;
+-----------------------------------------+--------+
| lugar                                   | numref |
+-----------------------------------------+--------+
| CABA Lascano 1500                       | Fid    |
| Segurola 1700                           | Fid    |
| Mercedes 1200                           | Fid    |
| CABA Camarones 1200                     | Fid    |
| Sanabria 2500                           | Fid    |
| Juan B Justo 4000                       | Fid    |
| Av Alvarez Jonte 1500                   | Fid    |
| Remedios de Escalada de San Martin 1200 | Fid    |
| Tres Arroyos 4800                       | Fid    |
| Gaona 1200                              | Fid    |
| CABA Lascano 1500                       | Ver    |
| Segurola 1700                           | Ver    |
| Mercedes 1200                           | Ver    |
| CABACamarones 1200                      | Ver    |
| Sanabria 2500                           | Ver    |
| Juan B Justo 4000                       | Ver    |
| Av Alvarez Jonte 1500                   | Ver    |
| Remedios de Escalada de San Martin 1200 | Ver    |
| Tres Arroyos 4800                       | Ver    |
| Gaona 1200                              | Ver    |
| CABA Lascano 1500                       | Car    |
| Segurola 1700                           | Car    |
| Mercedes 1200                           | Car    |
| CABA Camarones 1200                     | Car    |
| Sanabria 2500                           | Car    |
| Juan B Justo 4000                       | Car    |
| Av Alvarez Jonte 1500                   | Car    |
| Remedios de Escalada de San Martin 1200 | Car    |
| Tres Arroyos 4800                       | Car    |
| Gaona 1200                              | Car    |
| CABA Lascano 1500                       | Gall   |
| Segurola 1700                           | Gall   |
| Mercedes 1200                           | Gall   |
| CABA Camarones 1200                     | Gall  |
| Sanabria 2500                           | Gall   |
| Juan B Justo 4000                       | Gall   |
| Av Alvarez Jonte 1500                   | Gall   |
| Remedios de Escalada de San Martin 1200 | Gall   |
| Tres Arroyos 4800                       | Gall   |
| Gaona 1200                              | Gall   |
| CABA Lascano 1500                       | Golo   |
| Segurola 1700                           | Golo   |
| Mercedes 1200                           | Golo   |
| CABA Camarones 1200                     | Golo   |
| Sanabria 2500                           | Golo   |
| Juan B Justo 4000                       | Golo   |
| Av Alvarez Jonte 1500                   | Golo   |
| Remedios de Escalada de San Martin 1200 | Golo   |
| Tres Arroyos 4800                       | Golo   |
| Gaona 1200                              | Golo   |
| CABA Lascano 1500                       | Lec    |
| Segurola 1700                           | Lec    |
| Mercedes 1200                           | Lec    |
| CABA Camarones 1200                     | Lec    |
| Sanabria 2500                           | Lec    |
| Juan B Justo 4000                       | Lec    |
| Av Alvarez Jonte 1500                   | Lec    |
| Remedios de Escalada de San Martin 1200 | Lec    |
| Tres Arroyos 4800                       | Lec    |
| Gaona 1200                              | Lec    |
| CABA Lascano 1500                       | Agua   |
| Segurola 1700                           | Agua   |
| Mercedes 1200                           | Agua   |
| CABA Camarones 1200                     | Agua   |
| Sanabria 2500                           | Agua   |
| Juan B Justo 4000                       | Agua   |
| Av Alvarez Jonte 1500                   | Agua   |
| Remedios de Escalada de San Martin 1200 | Agua   |
| Tres Arroyos 4800                       | Agua   |
| Gaona 1200                              | Agua   |
| CABA Lascano 1500                       | Gas    |
| Segurola 1700                           | Gas    |
| Mercedes 1200                           | Gas    |
| CABA Camarones 1200                     | Gas    |
| Sanabria 2500                           | Gas    |
| Juan B Justo 4000                       | Gas    |
| Av Alvarez Jonte 1500                   | Gas    |
| Remedios de Escalada de San Martin 1200 | Gas    |
| Tres Arroyos 4800                       | Gas    |
| Gaona 1200                              | Gas    |
| CABA Lascano 1500                       | Pol    |
| Segurola 1700                           | Pol    |
| Mercedes 1200                           | Pol    |
| CABA Camarones 1200                     | Pol    |
| Sanabria 2500                           | Pol    |
| Juan B Justo 4000                       | Pol    |
| Av Alvarez Jonte 1500                   | Pol    |
| Remedios de Escalada de San Martin 1200 | Pol    |
| Tres Arroyos 4800                       | Pol    |
| Gaona 1200                              | Pol    |
| CABA Lascano 1500                       | Ques   |
| Segurola 1700                           | Ques   |
| Mercedes 1200                           | Ques   |
| CABA Camarones 1200                     | Ques   |
| Sanabria 2500                           | Ques   |
| Juan B Justo 4000                       | Ques   |
| Av Alvarez Jonte 1500                   | Ques   |
| Remedios de Escalada de San Martin 1200 | Ques   |
| Tres Arroyos 4800                       | Ques   |
| Gaona 1200                              | Ques   |
+-----------------------------------------+--------+

/* Obtener el numero de cajas que hay en cada almacen */

select count(numref)
from cajas;
+---------------+
| count(numref) |
+---------------+
|            10 |
+---------------+

/* Obtener los codigos de los almacenes que estan saturados (los almacenes donde el numero de cajas es superior a la capacidad */

select a.codigo, a.capacidad, b.valor
from almacen a, cajas b
where valor>capacidad;
+--------+-----------+-------+
| codigo | capacidad | valor |
+--------+-----------+-------+
|      4 |       100 |   105 |
|      3 |       200 |   400 |
|      4 |       100 |   400 |
|      4 |       100 |   170 |
|      4 |       100 |   115 |
|      4 |       100 |   165 |
|      4 |       100 |   150 |
|      3 |       200 |   210 |
|      4 |       100 |   210 |
|      3 |       200 |   300 |
|      4 |       100 |   300 |
|      3 |       200 |   220 |
|      4 |       100 |   220 |
|      3 |       200 |   205 |
|      4 |       100 |   205 |
+--------+-----------+-------+

/* Obtener los numeros de referencia de las cajas que estan en CABA */

select a.numref, b.lugar
from cajas a, almacen b
where lugar like "CABA%";
+--------+---------------------+
| numref | lugar               |
+--------+---------------------+
| Fid    | CABA Lascano 1500   |
| Ver    | CABA Lascano 1500   |
| Car    | CABA Lascano 1500   |
| Gall   | CABA Lascano 1500   |
| Golo   | CABA Lascano 1500   |
| Lec    | CABA Lascano 1500   |
| Agua   | CABA Lascano 1500   |
| Gas    | CABA Lascano 1500   |
| Pol    | CABA Lascano 1500   |
| Ques   | CABA Lascano 1500   |
| Fid    | CABA Camarones 1200 |
| Ver    | CABA Camarones 1200 |
| Car    | CABA Camarones 1200 |
| Gall   | CABA Camarones 1200 |
| Golo   | CABA Camarones 1200 |
| Lec    | CABA Camarones 1200 |
| Agua   | CABA Camarones 1200 |
| Gas    | CABA Camarones 1200 |
| Pol    | CABA Camarones 1200 |
| Ques   | CABA Camarones 1200 |
+--------+---------------------+

/* Rebajar el valor de todas las cajas un 15% */

select valor*0.85
from cajas;
+------------+
| valor*0.85 |
+------------+
|      89.25 |
|     340.00 |
|     144.50 |
|      97.75 |
|     140.25 |
|     127.50 |
|     178.50 |
|     255.00 |
|     187.00 |
|     174.25 |
+------------+

/* Eliminar todas las cajas cuyo valor sea inferior a 100 */

delete
from cajas
where valor<100;

select valor
from cajas
where valor<100;
Empty set (0.00 sec)

/* Insertar un nuevo almacen con capacidad para 3 cajas en CABA */

insert into cajas values
("Jam","Jamon",170,11);

insert into almacen values
(1,"CABA Baigorria 1500",3);
