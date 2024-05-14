drop database if exists taller;
create database taller;
use taller;

create table piezas(
codigopieza int,
nombre varchar(100),
constraint pk_piezas primary key(codigopieza)
);



create table proveedores(
idproveedor varchar(4),
nombre varchar(100),
constraint pk_proveedores primary key(idproveedor)
);



create table Suministra(
codigopieza int,
idproveedor varchar(4),
Precio int,
constraint pk_suministra primary key(codigopieza, idproveedor),
constraint fk_suministra_1 foreign key(idproveedor) references proveedores(idproveedor),
constraint fk_suministra_2 foreign key(codigopieza) references piezas(codigopieza)
);


insert into piezas values
(1, "Llanta"),
(2, "Carburador"),
(3, "Pastillos de freno"),
(4, "Valvula de Escape"),
(5, "Tanque de gas"),
(6, "Motor"),
(7, "Filtro de aire"),
(8, "Carroceria"),
(9, "Volante"),
(10, "Bujias");


insert into proveedores values
("fiat", "fiat"),
("ford", "ford"),
("peu", "peugeot"),
("rena", "renault"),
("chev", "chevrolet"),
("wolk", "wolksvagen"),
("toyo", "toyota"),
("hon", "honda"),
("cit", "citroen"),
("audi", "audi");


insert into suministra values
(1, "fiat", 7000),
(2, "ford", 12900),
(3, "peu", 4900),
(4, "rena", 6000),
(5, "chev", 4000),
(6, "wolk", 43000),
(7, "toyo", 6200),
(8, "hon", 12000),
(9, "cit", 6560),
(10, "audi", 12320),
(1, "audi", 7000),
(2, "cit", 12900),
(3, "hon", 4900),
(4, "toyo", 6000),
(5, "wolk", 4000),
(6, "chev", 43000),
(7, "rena", 6200),
(8, "peu", 12000),
(9, "ford", 6560),
(10, "fiat", 12320);


select * 
from piezas;
+-------------+--------------------+
| codigopieza | nombre             |
+-------------+--------------------+
|           1 | Llanta             |
|           2 | Carburador         |
|           3 | Pastillos de freno |
|           4 | Valvula de Escape  |
|           5 | Tanque de gas      |
|           6 | Motor              |
|           7 | Filtro de aire     |
|           8 | Carroceria         |
|           9 | Volante            |
|          10 | Bujias             |
+-------------+--------------------+
10 rows in set (0.000 sec)




select * from proveedores;
+-------------+------------+
| idproveedor | nombre     |
+-------------+------------+
| audi        | audi       |
| chev        | chevrolet  |
| cit         | citroen    |
| fiat        | fiat       |
| ford        | ford       |
| hon         | honda      |
| peu         | peugeot    |
| rena        | renault    |
| toyo        | toyota     |
| wolk        | wolksvagen |
+-------------+------------+
10 rows in set (0.000 sec)



select * from suministra;
+-------------+-------------+--------+
| codigopieza | idproveedor | Precio |
+-------------+-------------+--------+
|           1 | audi        |   7000 |
|           1 | fiat        |   7000 |
|           2 | cit         |  12900 |
|           2 | ford        |  12900 |
|           3 | hon         |   4900 |
|           3 | peu         |   4900 |
|           4 | rena        |   6000 |
|           4 | toyo        |   6000 |
|           5 | chev        |   4000 |
|           5 | wolk        |   4000 |
|           6 | chev        |  43000 |
|           6 | wolk        |  43000 |
|           7 | rena        |   6200 |
|           7 | toyo        |   6200 |
|           8 | hon         |  12000 |
|           8 | peu         |  12000 |
|           9 | cit         |   6560 |
|           9 | ford        |   6560 |
|          10 | audi        |  12320 |
|          10 | fiat        |  12320 |
+-------------+-------------+--------+
20 rows in set (0.000 sec)



/*a*/ 

select nombre
from piezas;
+--------------------+
| nombre             |
+--------------------+
| Llanta             |
| Carburador         |
| Pastillos de freno |
| Valvula de Escape  |
| Tanque de gas      |
| Motor              |
| Filtro de aire     |
| Carroceria         |
| Volante            |
| Bujias             |
+--------------------+
10 rows in set (0.000 sec)
		
/*b*/ 

select * from proveedores
where nombre like "f%";
+-------------+--------+
| idproveedor | nombre |
+-------------+--------+
| fiat        | fiat   |
| ford        | ford   |
+-------------+--------+
2 rows in set (0.000 sec)
		

c. /* Obtener los nombres de las piezas suministradas por el proveedor cuyo codigo es ford*/

select piezas.nombre, proveedores.nombre
from piezas, proveedores, suministra
where piezas.codigopieza=suministra.codigopieza and suministra.idproveedor=proveedores.idProveedor and proveedores.idproveedor = "ford";
+------------+--------+
| nombre     | nombre |
+------------+--------+
| Carburador | ford   |
| Volante    | ford   |
+------------+--------+
2 rows in set (0.000 sec)

/*d*/ 

select min(suministra.precio), proveedores.nombre
from suministra, proveedores
where suministra.idproveedor = proveedores.idproveedor
group by proveedores.idproveedor;
+------------------------+------------+
| min(suministra.precio) | nombre     |
+------------------------+------------+
|                   7000 | audi       |
|                   4000 | chevrolet  |
|                   6560 | citroen    |
|                   7000 | fiat       |
|                   6560 | ford       |
|                   4900 | honda      |
|                   4900 | peugeot    |
|                   6000 | renault    |
|                   6000 | toyota     |
|                   4000 | wolksvagen |
+------------------------+------------+
10 rows in set (0.000 sec)
					
/*e*/ 

insert into piezas values
(11, "Parabrisas");
Query OK, 1 row affected (0.057 sec)
insert into suministra values
(11, "rena", 15000);
Query OK, 1 row affected (0.045 sec)

/*f*/
update suministra
set precio = precio + precio*0.15;
Rows matched: 21  Changed: 21  Warnings: 0	

/*g*/

delete from suministra 
where idproveedor = "peu";
Query OK, 2 rows affected (0.048 sec)

select * from suministra
where idproveedor = "peu";
Empty set (0.000 sec)

/*h*/

insert into Piezas values
(12, "Alarmas");
Query OK, 1 row affected (0.088 sec)
insert into Suministra values
(12, "peu", 4121);
Query OK, 1 row affected (0.088 sec)

/*i*/ 

select avg(precio), codigopieza
from suministra
group by codigopieza;
+-------------+-------------+
| avg(precio) | codigopieza |
+-------------+-------------+
|   8050.0000 |           1 |
|  14835.0000 |           2 |
|   5635.0000 |           3 |
|   6900.0000 |           4 |
|   4600.0000 |           5 |
|  49450.0000 |           6 |
|   7130.0000 |           7 |
|  13800.0000 |           8 |
|   7544.0000 |           9 |
|  14168.0000 |          10 |
|  17250.0000 |          11 |
|   4121.0000 |          12 |
+-------------+-------------+
12 rows in set (0.000 sec)