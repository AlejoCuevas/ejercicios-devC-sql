drop database if exists cine;
create database cine;
use cine;

create table peliculas(
codigo int,
nombre nvarchar(100),
CalificacionEdad int,
constraint PK_Codigo primary key (codigo)    
);

create table salas(
codigo int,
nombre nvarchar(100),
pelicula int,
constraint PK_Codigo2 primary key (codigo),
constraint FK_Pelicula foreign key (pelicula) references peliculas(codigo) 
);

insert into peliculas values
(1,"Toy Story",7),
(2,"Cars",7),
(3,"Titanic",13),
(4,"Rapidos y Furiosos",18),
(5,"Batman",13),
(6,"Superman",7),
(7,"Spiderman",7),
(8,"Iron Man",13),
(9,"Mision Imposible",null),
(10,"Monsters Inc",7);

insert into salas values
(11,"Sala 1",1),
(12,"Sala 1",1),
(13,"Sala 2",3),
(14,"Sala 2",3),
(15,"Sala 3",4),
(16,"Sala 3",4),
(18,"Sala 4",5),
(19,"Sala 5",5),
(21,"Sala 15",6);

/* Salidas */

MariaDB [cine]> select * from peliculas;
+--------+--------------------+------------------+
| codigo | nombre             | CalificacionEdad |
+--------+--------------------+------------------+
|      1 | Toy Story          |                7 |
|      2 | Cars               |                7 |
|      3 | Titanic            |               13 |
|      4 | Rapidos y Furiosos |               18 |
|      5 | Batman             |               13 |
|      6 | Superman           |                7 |
|      7 | Spiderman          |                7 |
|      8 | Iron Man           |               13 |
|      9 | Mision Imposible   |             NULL |
|     10 | Monsters Inc       |                7 |
+--------+--------------------+------------------+
10 rows in set (0.000 sec)

select * from salas;
+--------+---------+----------+
| codigo | nombre  | pelicula |
+--------+---------+----------+
|     11 | Sala 1  |        1 |
|     12 | Sala 1  |        2 |
|     13 | Sala 2  |        3 |
|     14 | Sala 2  |        4 |
|     15 | Sala 3  |        5 |
|     16 | Sala 3  |        6 |
|     18 | Sala 4  |        7 |
|     19 | Sala 5  |        8 |
|     21 | Sala 15 |        9 |
+--------+---------+----------+
9 rows in set (0.000 sec)


/* Obtener los nombres de las peliculas sin repeticiones */

select nombre from peliculas;
+--------------------+
| nombre             |
+--------------------+
| Toy Story          |
| Cars               |
| Titanic            |
| Rapidos y Furiosos |
| Batman             |
| Superman           |
| Spiderman          |
| Iron Man           |
| Mision Imposible   |
| Monsters Inc       |
+--------------------+
10 rows in set (0.000 sec)

/* Obtener los nombres de las películas sin repeticiones. */

select nombre from peliculas;
+--------------------+
| nombre             |
+--------------------+
| Toy Story          |
| Cars               |
| Titanic            |
| Rapidos y Furiosos |
| Batman             |
| Superman           |
| Spiderman          |
| Iron Man           |
| Mision Imposible   |
| Monsters Inc       |
+--------------------+
10 rows in set (0.001 sec)


/*  */

select * from peliculas where CalificacionEdad is null;
+--------+------------------+------------------+
| codigo | nombre           | CalificacionEdad |
+--------+------------------+------------------+
|      9 | Mision Imposible |             NULL |
+--------+------------------+------------------+
1 row in set (0.002 sec)


/*  */

select a.nombre, b.nombre
from peliculas a, salas b
INNER JOIN peliculas.codigo = salas.pelicula
where CalificacionEdad > 13;

/*  */

select peliculas.nombre, salas.nombre
from peliculas, salas
where peliculas.codigo = salas.pelicula and CalificacionEdad > 13;
+--------------------+--------+
| nombre             | nombre |
+--------------------+--------+
| Rapidos y Furiosos | Sala 3 |
| Rapidos y Furiosos | Sala 3 |
+--------------------+--------+
2 rows in set (0.002 sec)


SELECT * FROM SALAS LEFT JOIN PELICULAS ON SALAS.Pelicula= PELICULAS.Codigo;
+--------+---------+----------+--------+--------------------+------------------+
| codigo | nombre  | pelicula | codigo | nombre             | CalificacionEdad |
+--------+---------+----------+--------+--------------------+------------------+
|     11 | Sala 1  |        1 |      1 | Toy Story          |                7 |
|     12 | Sala 1  |        1 |      1 | Toy Story          |                7 |
|     13 | Sala 2  |        3 |      3 | Titanic            |               13 |
|     14 | Sala 2  |        3 |      3 | Titanic            |               13 |
|     15 | Sala 3  |        4 |      4 | Rapidos y Furiosos |               18 |
|     16 | Sala 3  |        4 |      4 | Rapidos y Furiosos |               18 |
|     18 | Sala 4  |        5 |      5 | Batman             |               13 |
|     19 | Sala 5  |        5 |      5 | Batman             |               13 |
|     21 | Sala 15 |        6 |      6 | Superman           |                7 |
+--------+---------+----------+--------+--------------------+------------------+
9 rows in set (0.000 sec)

select * from salas right join peliculas on salas.pelicula = peliculas.codigo;
+--------+---------+----------+--------+--------------------+------------------+
| codigo | nombre  | pelicula | codigo | nombre             | CalificacionEdad |
+--------+---------+----------+--------+--------------------+------------------+
|     11 | Sala 1  |        1 |      1 | Toy Story          |                7 |
|     12 | Sala 1  |        1 |      1 | Toy Story          |                7 |
|   NULL | NULL    |     NULL |      2 | Cars               |                7 |
|     13 | Sala 2  |        3 |      3 | Titanic            |               13 |
|     14 | Sala 2  |        3 |      3 | Titanic            |               13 |
|     15 | Sala 3  |        4 |      4 | Rapidos y Furiosos |               18 |
|     16 | Sala 3  |        4 |      4 | Rapidos y Furiosos |               18 |
|     18 | Sala 4  |        5 |      5 | Batman             |               13 |
|     19 | Sala 5  |        5 |      5 | Batman             |               13 |
|     21 | Sala 15 |        6 |      6 | Superman           |                7 |
|   NULL | NULL    |     NULL |      7 | Spiderman          |                7 |
|   NULL | NULL    |     NULL |      8 | Iron Man           |               13 |
|   NULL | NULL    |     NULL |      9 | Mision Imposible   |             NULL |
|   NULL | NULL    |     NULL |     10 | Monsters Inc       |                7 |
+--------+---------+----------+--------+--------------------+------------------+
14 rows in set (0.001 sec)

MariaDB [cine]>

SELECT * FROM PELICULAS WHERE Codigo NOT IN (SELECT Pelicula FROM SALAS WHERE Pelicula IS
    -> NOT NULL);
+--------+------------------+------------------+
| codigo | nombre           | CalificacionEdad |
+--------+------------------+------------------+
|      2 | Cars             |                7 |
|      7 | Spiderman        |                7 |
|      8 | Iron Man         |               13 |
|      9 | Mision Imposible |             NULL |
|     10 | Monsters Inc     |                7 |
+--------+------------------+------------------+
5 rows in set (0.007 sec)


insert into peliculas values
(45,"Los Locos Adams",13);

update peliculas 
set CalificacionEdad = 13
where CalificacionEdad is null; 


delete from salas where pelicula in (select codigo from peliculas where calificacionedad < 13);
Query OK, 3 rows affected (0.009 sec)