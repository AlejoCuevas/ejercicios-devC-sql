drop database if exists almacenes;
create database almacenes;
use almacenes;


create table cajeros(
Codigo int,
NomApels varchar(255),
constraint PK_Codigo primary key (Codigo)
);

create table productos(
Codigo3 int,
nombre varchar(255),
precio int,
constraint PK_Codigo3 primary key (Codigo3)

);

create table maquinas_registradoras(
Codigo4 int,
Piso int,
constraint PK_Codigo4 primary key (Codigo4)
);

create table venta(
Cajero int,
Maquina int,
Producto int,
constraint PK_Cajero primary key (Cajero),
constraint FK_Cajero foreign key (Cajero) references cajeros(Codigo),
constraint FK_Maquina foreign key (Maquina) references maquinas_registradoras(Codigo4),
constraint FK_Producto foreign key (Producto) references productos(Codigo3)
);

insert into cajeros values
(1,"Juan Manuel"),
(2,"Alejandro Ahmed"),
(3,"Lautaro Annetta"),
(4,"Alejo Cuevas"),
(5,"Arturo Avila"),
(6,"Guido Gerardi"),
(7,"Alejandro Magno"),
(8,"Luis Suarez"),
(9,"Lionel Messi"),
(10,"Diego Maradona");

insert into maquinas_registradoras values
(101,1),
(102,2),
(103,3),
(104,4),
(105,5),
(106,6),
(107,7),
(108,8),
(109,9),
(110,10);

insert into productos values
(11,"Queso",500),
(12,"Salame",400),
(13,"Gaseosa",120),
(14,"Leche",100),
(15,"Snacks",150),
(16,"Cerveza",200),
(17,"Heladera",25000),
(18,"Televisor",15000),
(19,"Mouse",3000),
(20,"Teclado",1400);

insert into venta values
(1,101,11),
(2,102,12),
(3,103,13),
(4,104,14),
(5,105,15),
(6,106,16),
(7,107,17),
(8,108,18),
(9,109,19),
(10,110,20);


select producto from venta order by producto desc;
+----------+
| producto |
+----------+
|       20 |
|       19 |
|       18 |
|       17 |
|       16 |
|       15 |
|       14 |
|       13 |
|       12 |
|       11 |
+----------+
10 rows in set (0.000 sec)

