
select * from provincias;
+----+-------------------------------------------------------+-------------------------------------+---------------------------+-----------+------------+----------------+-------------+--------------------------------+
| id | nombre                                                | capital                             | gobernador                | poblacion | superficie | autonoma_desde | region      | partido                        |
+----+-------------------------------------------------------+-------------------------------------+---------------------------+-----------+------------+----------------+-------------+--------------------------------+
|  1 | Buenos Aires                                          | La Plata                            | Axel Kicillof             |  17541141 |     307571 | 1820-02-11     | Pampa       | PJ                             |
|  2 | Catamarca                                             | San Fernando del Valle de Catamarca | Raul Jalil                |    415438 |     102602 | 1821-08-25     | NOA         | PJ                             |
|  3 | Chaco                                                 | Resistencia                         | Jorge Capitanich          |   1204541 |      99633 | 1951-08-08     | Chaco       | PJ                             |
|  4 | Chubut                                                | Rawson                              | Mariano Arcioni           |    618994 |     224686 | 1955-06-15     | Patagonia   | Chubut Somos Todos             |
|  5 | Cordoba                                               | Cordoba                             | Juan Schiaretti           |   3760450 |     165321 | 1820-01-05     | Pampa       | PJ                             |
|  6 | Corrientes                                            | Corrientes                          | Gustavo Valdes            |   1120801 |      88199 | 1814-04-20     | Mesopotamia | UCR                            |
|  7 | Entre Rios                                            | Parana                              | Gustavo Border            |   1385961 |      78781 | 1814-04-23     | Mesopotamia | PJ                             |
|  8 | Formosa                                               | Formosa                             | Gildo Insfran             |    605193 |      72066 | 1955-06-15     | Chaco       | PJ                             |
|  9 | Jujuy                                                 | San Salvador de Jujuy               | Gerardo Morales           |    770881 |      53219 | 1836-12-17     | NOA         | UCR                            |
| 10 | La Pampa                                              | Santa Rosa                          | Carlos Verna              |    358428 |     143440 | 1951-08-08     | Patagonia   | PJ                             |
| 11 | La Rioja                                              | La Rioja                            | Ricardo Quintela          |    393531 |      89680 | 1820-03-01     | NOA         | PJ                             |
| 12 | Mendoza                                               | Mendoza                             | Rodolfo Suarez            |   1990338 |     148827 | 1820-03-01     | Cuyo        | UCR                            |
| 13 | Misiones                                              | Posadas                             | Oscar Herrera Ahuad       |   1261294 |      29801 | 1953-12-10     | Mesopotamia | Partido de la Concordia Social |
| 14 | Neuquen                                               | Neuquen                             | Omar Gutierrez            |    664057 |      94078 | 1955-06-15     | Patagonia   | MPN                            |
| 15 | Rio Negro                                             | Viedma                              | Arabela Carreras          |    747610 |     203013 | 1955-06-15     | Patagonia   | Juntos Somos Rio Negro         |
| 16 | Salta                                                 | Salta                               | Gustavo Saenz             |   1424397 |     155488 | 1836-12-17     | NOA         | PJ                             |
| 17 | San Juan                                              | San Juan                            | Sergio U?ac               |    781217 |      89651 | 1820-03-01     | Cuyo        | PJ                             |
| 18 | San Luis                                              | San Luis                            | Alberto Rodriguez Saa     |    508328 |      76748 | 1820-03-01     | Cuyo        | PJ                             |
| 19 | Santa Cruz                                            | Rio Gallegos                        | Alicia Kirchner           |    365698 |     243943 | 1956-11-22     | Patagonia   | PJ                             |
| 20 | Santa Fe                                              | Santa Fe                            | Omar Perotti              |   3536418 |     133007 | 1816-05-10     | Pampa       | PJ                             |
| 21 | Santiago del Estero                                   | Santiago del Estero                 | Gerardo Zamora            |    978313 |     136351 | 1820-04-27     | NOA         | UCR                            |
| 22 | Tierra del Fuego, Antartida e Islas del Atlantico Sur | Ushuaia                             | Gustavo Melella           |    173432 |      21571 | 1990-04-26     | Patagonia   | UCR                            |
| 23 | Tucuman                                               | San Miguel de Tucuman               | Juan Luis Manzur          |   1694656 |      22524 | 1825-11-25     | NOA         | PJ                             |
| 24 | Ciudad Autonoma de Buenos Aires                       | NULL                                | Horacio Rodriguez Larreta |   3075646 |        203 | 1536-02-02     | Pampa       | PRO                            |
+----+-------------------------------------------------------+-------------------------------------+---------------------------+-----------+------------+----------------+-------------+--------------------------------+
24 rows in set (0.000 sec)


select * from ciudades;
+----+-------------------------------------+-----------+-----------+------------+------------+---------------------------+---------+
| id | nombre                              | provincia | poblacion | superficie | fundacion  | intendente                | altitud |
+----+-------------------------------------+-----------+-----------+------------+------------+---------------------------+---------+
|  1 | Buenos Aires                        |        24 |   2890151 |        203 | 1536-02-02 | Horacio Rodriguez Larreta |      25 |
|  2 | Cordoba                             |         5 |   1317298 |        576 | 1573-07-06 | Martin Llaryora           |     670 |
|  3 | Rosario                             |        20 |    948312 |        179 | 1852-08-05 | Pablo Javkin              |      25 |
|  4 | Mar del Plata                       |         1 |    593337 |         79 | 1874-02-10 | Guillermo Montenegro      |      38 |
|  5 | San Miguel de Tucuman               |        23 |    548866 |         91 | 1565-05-31 | German Alfaro             |     431 |
|  6 | Salta                               |        16 |    520683 |         60 | 1582-04-16 | Bettina Romero            |    1187 |
|  7 | Santa Fe                            |        20 |    391164 |        268 | 1573-11-15 | Emilio Jaton              |      25 |
|  8 | Corrientes                          |         6 |    346334 |         90 | 1588-04-03 | Eduardo Tassano           |      62 |
|  9 | Bahia Blanca                        |         1 |    291327 |        130 | 1828-04-11 | Hector Gay                |      20 |
| 10 | Resistencia                         |         3 |    290723 |        562 | 1878-01-27 | Gustavo Martinez          |      50 |
| 11 | Posadas                             |        13 |    275028 |        324 | 1870-03-18 | Leonardo Stelatto         |     124 |
| 12 | Merlo                               |         1 |    268961 |        173 | 1755-08-28 | Gustavo Menendez          |      16 |
| 13 | Quilmes                             |         1 |    262379 |        125 | 1666-08-14 | Mayra Mendoza             |      17 |
| 14 | San Salvador de Jujuy               |         9 |    257970 |         19 | 1593-04-19 | Raul Jorge                |    1259 |
| 15 | Guaymallen                          |        12 |    252618 |       NULL | 1858-05-14 | Marcelino Iglesias        |     720 |
| 16 | Santiago del Estero                 |        21 |    252192 |         40 | 1553-07-25 | Norma Fuentes             |     182 |
| 17 | Gregorio de Laferrere               |         1 |    248362 |         24 | 1911-05-04 | Fernando Espinoza         |       4 |
| 18 | Jose C. Paz                         |         1 |    247217 |         50 | 1994-10-20 | Mario Alberto Ishii       |      25 |
| 19 | Parana                              |         7 |    247139 |        137 | 1813-06-25 | Adan Bahl                 |      77 |
| 20 | Banfield                            |         1 |    246467 |       NULL | 1960-10-28 | Martin Insaurralde        |      16 |
| 21 | Gonzalez Catan                      |         1 |    238067 |        168 | 1910-04-03 | Fernando Espinoza         |      19 |
| 22 | Neuquen                             |        14 |    231198 |        128 | 1904-09-12 | Mariano Gaido             |     270 |
| 23 | Formosa                             |         8 |    222226 |         75 | 1879-04-08 | Jorge Jofre               |      57 |
| 24 | Lanus                               |         1 |    215956 |         48 | 1945-01-01 | Nestor Grindetti          |       9 |
| 25 | La Plata                            |         1 |    193144 |         27 | 1882-11-19 | Julio Garro               |      26 |
| 26 | Godoy Cruz                          |        12 |    191299 |        107 | 1909-02-09 | Tadeo Garcia Zalazar      |     730 |
| 27 | Isidro Casanova                     |         1 |    190696 |         20 | 1911-05-15 | Fernando Espinoza         |      14 |
| 28 | Las Heras                           |        12 |    189067 |       NULL | 1871-01-31 | Mario Daniel Orozco       |     725 |
| 29 | Berazategui                         |         1 |    180523 |        217 | 1960-01-04 | Juan Jose Mussi           |      22 |
| 30 | La Rioja                            |        11 |    178872 |         14 | 1591-05-20 | Ines Brizuela y Doria     |     515 |
| 31 | Comodoro Rivadavia                  |         4 |    175196 |         66 | 1901-02-23 | Juan Pablo Luque          |      61 |
| 32 | Moreno                              |         1 |    171849 |        184 | 1864-10-25 | Mariel Fernandez          |      14 |
| 33 | San Luis                            |        18 |    169947 |        256 | 1594-08-25 | Sergio Tamayo             |     709 |
| 34 | San Miguel                          |         1 |    168762 |          9 | 1864-05-18 | Jaime Mendez              |      28 |
| 35 | San Fernando del Valle de Catamarca |         2 |    159139 |        399 | 1683-07-05 | Gustavo Saadi             |     519 |
| 36 | Rio Cuarto                          |         5 |    157010 |         64 | 1786-11-11 | Juan Manuel Llamosas      |     452 |
| 37 | Virrey del Pino                     |         1 |    156132 |        117 | NULL       | Fernando Espinoza         |    NULL |
+----+-------------------------------------+-----------+-----------+------------+------------+---------------------------+---------+
37 rows in set (0.000 sec)


select * from clientes;
+----+----------+-----------+---------------+----------------+--------+-----------+
| id | nombre   | apellido  | tel           | calle          | altura | localidad |
+----+----------+-----------+---------------+----------------+--------+-----------+
|  1 | Juan     | Perez     | 011 5555 5555 | Baigorria      |   5360 |         1 |
|  2 | Maria    | Garcia    | 351 5555 4444 | San Martin     |   1234 |         2 |
|  3 | Jorge    | Rodriguez | 223 5555 3333 | Jujuy          |   1200 |         4 |
|  4 | Juana    | Martinez  | 341 4444 1234 | Corrientes     |   6500 |         3 |
|  5 | Mario    | Martinez  | 351 3333 6666 | Rivadavia      |   4366 |         2 |
|  6 | Pedro    | Gonzalez  | 381 4444 4321 | Belgrano       |   5674 |         5 |
|  7 | Graciela | Rodriguez | 341 1234 1234 | Av. de Mayo    |   3456 |         3 |
|  8 | Antonia  | Perez     | 011 5555 5555 | Av. 9 de Julio |   2300 |         1 |
+----+----------+-----------+---------------+----------------+--------+-----------+
8 rows in set (0.000 sec)

select * from compras;
+----+---------------------+---------+----------+------+
| id | fecha               | cliente | producto | cant |
+----+---------------------+---------+----------+------+
|  1 | 2022-05-12 17:30:00 |       1 |        5 |   10 |
|  2 | 2022-05-12 17:35:00 |       3 |        7 |   20 |
|  3 | 2022-05-13 17:40:00 |       3 |       12 |   30 |
|  4 | 2022-05-13 17:45:00 |       4 |        7 |   20 |
|  5 | 2022-05-14 16:15:00 |       2 |       14 |   20 |
|  6 | 2022-05-15 15:10:00 |       8 |        2 |   10 |
|  7 | 2022-05-15 15:15:00 |       7 |        3 |   50 |
|  8 | 2022-05-15 18:00:00 |       4 |        6 |   50 |
|  9 | 2022-05-16 09:00:00 |       6 |       13 |   15 |
| 10 | 2022-05-16 11:30:00 |       5 |        7 |    5 |
| 11 | 2022-05-16 17:10:00 |       5 |        8 |   10 |
| 12 | 2022-05-16 17:30:00 |       1 |        9 |   30 |
| 13 | 2022-05-16 17:40:00 |       2 |       10 |   25 |
| 14 | 2022-05-17 10:30:00 |       1 |       11 |   15 |
| 15 | 2022-05-17 10:40:00 |       2 |       12 |   15 |
| 16 | 2022-05-17 15:00:00 |       5 |        1 |   20 |
| 17 | 2022-05-17 15:50:00 |       7 |        4 |   10 |
+----+---------------------+---------+----------+------+
17 rows in set (0.000 sec)

select * from productos;
+----+--------------------------------+-----------+--------+-------+
| id | descripcion                    | marca     | precio | stock |
+----+--------------------------------+-----------+--------+-------+
|  1 | Birome azul                    | BIC       |  13.99 |  1000 |
|  2 | Birome roja                    | BIC       |  13.99 |  1000 |
|  3 | Birome verde                   | BIC       |  13.99 |  1000 |
|  4 | Birome negra                   | BIC       |  13.99 |  1000 |
|  5 | Resma A4                       | Ledesma   | 182.99 |   100 |
|  6 | Resma A4                       | Pumax     | 169.99 |   100 |
|  7 | Marcador de pizarra negro      | Trabi     |  99.99 |   500 |
|  8 | Marcador de pizarra azul       | Trabi     |  99.99 |   500 |
|  9 | Marcador de pizarra rojo       | Trabi     |  99.99 |   500 |
| 10 | Marcador de pizarra verde      | Trabi     |  99.99 |   500 |
| 11 | Cuaderno 48 hojas rayado       | Rivadavia | 119.99 |   500 |
| 12 | Cuaderno 48 hojas cuadriculado | Rivadavia | 119.99 |   500 |
| 13 | Adhesivo para papel            | Voligoma  |  59.99 |  1000 |
| 14 | Tijera                         | Maped     |  89.99 |   600 |
| 15 | Compas                         | Pizzini   | 529.99 |   100 |
+----+--------------------------------+-----------+--------+-------+
15 rows in set (0.000 sec)



/* 1 */

select nombre from ciudades
where provincia in (select id from provincias where nombre = "Cordoba");
+------------+
| nombre     |
+------------+
| Cordoba    |
| Rio Cuarto |
+------------+
2 rows in set (0.001 sec)

/* 2 */

select nombre, poblacion
from ciudades
where poblacion <= 948312;
+-------------------------------------+-----------+
| nombre                              | poblacion |
+-------------------------------------+-----------+
| Rosario                             |    948312 |
| Mar del Plata                       |    593337 |
| San Miguel de Tucuman               |    548866 |
| Salta                               |    520683 |
| Santa Fe                            |    391164 |
| Corrientes                          |    346334 |
| Bahia Blanca                        |    291327 |
| Resistencia                         |    290723 |
| Posadas                             |    275028 |
| Merlo                               |    268961 |
| Quilmes                             |    262379 |
| San Salvador de Jujuy               |    257970 |
| Guaymallen                          |    252618 |
| Santiago del Estero                 |    252192 |
| Gregorio de Laferrere               |    248362 |
| Jose C. Paz                         |    247217 |
| Parana                              |    247139 |
| Banfield                            |    246467 |
| Gonzalez Catan                      |    238067 |
| Neuquen                             |    231198 |
| Formosa                             |    222226 |
| Lanus                               |    215956 |
| La Plata                            |    193144 |
| Godoy Cruz                          |    191299 |
| Isidro Casanova                     |    190696 |
| Las Heras                           |    189067 |
| Berazategui                         |    180523 |
| La Rioja                            |    178872 |
| Comodoro Rivadavia                  |    175196 |
| Moreno                              |    171849 |
| San Luis                            |    169947 |
| San Miguel                          |    168762 |
| San Fernando del Valle de Catamarca |    159139 |
| Rio Cuarto                          |    157010 |
| Virrey del Pino                     |    156132 |
+-------------------------------------+-----------+
35 rows in set (0.000 sec)

/* 3 */

select * from provincias
where superficie > (select sum(superficie) from provincias where region = "Mesopotamia");
+----+--------------+--------------+------------------+-----------+------------+----------------+-----------+------------------------+
| id | nombre       | capital      | gobernador       | poblacion | superficie | autonoma_desde | region    | partido                |
+----+--------------+--------------+------------------+-----------+------------+----------------+-----------+------------------------+
|  1 | Buenos Aires | La Plata     | Axel Kicillof    |  17541141 |     307571 | 1820-02-11     | Pampa     | PJ                     |
|  4 | Chubut       | Rawson       | Mariano Arcioni  |    618994 |     224686 | 1955-06-15     | Patagonia | Chubut Somos Todos     |
| 15 | Rio Negro    | Viedma       | Arabela Carreras |    747610 |     203013 | 1955-06-15     | Patagonia | Juntos Somos Rio Negro |
| 19 | Santa Cruz   | Rio Gallegos | Alicia Kirchner  |    365698 |     243943 | 1956-11-22     | Patagonia | PJ                     |
+----+--------------+--------------+------------------+-----------+------------+----------------+-----------+------------------------+
4 rows in set (0.002 sec)

/* 4 */

select nombre from provincias where id in (select provincia from ciudades);
+---------------------------------+
| nombre                          |
+---------------------------------+
| Buenos Aires                    |
| Catamarca                       |
| Chaco                           |
| Chubut                          |
| Cordoba                         |
| Corrientes                      |
| Entre Rios                      |
| Formosa                         |
| Jujuy                           |
| La Rioja                        |
| Mendoza                         |
| Misiones                        |
| Neuquen                         |
| Salta                           |
| San Luis                        |
| Santa Fe                        |
| Santiago del Estero             |
| Tucuman                         |
| Ciudad Autonoma de Buenos Aires |
+---------------------------------+
19 rows in set (0.001 sec)

/* 5 */

select nombre from provincias where capital in (select nombre from ciudades);
+---------------------+
| nombre              |
+---------------------+
| Buenos Aires        |
| Catamarca           |
| Chaco               |
| Cordoba             |
| Corrientes          |
| Entre Rios          |
| Formosa             |
| Jujuy               |
| La Rioja            |
| Misiones            |
| Neuquen             |
| Salta               |
| San Luis            |
| Santa Fe            |
| Santiago del Estero |
| Tucuman             |
+---------------------+
16 rows in set (0.001 sec)

/* 6 */

select count(ciudades.nombre), provincias.nombre
from ciudades, provincias
where ciudades.provincia = provincias.id
group by provincias.nombre;
+------------------------+---------------------------------+
| count(ciudades.nombre) | nombre                          |
+------------------------+---------------------------------+
|                     15 | Buenos Aires                    |
|                      1 | Catamarca                       |
|                      1 | Chaco                           |
|                      1 | Chubut                          |
|                      1 | Ciudad Autonoma de Buenos Aires |
|                      2 | Cordoba                         |
|                      1 | Corrientes                      |
|                      1 | Entre Rios                      |
|                      1 | Formosa                         |
|                      1 | Jujuy                           |
|                      1 | La Rioja                        |
|                      3 | Mendoza                         |
|                      1 | Misiones                        |
|                      1 | Neuquen                         |
|                      1 | Salta                           |
|                      1 | San Luis                        |
|                      2 | Santa Fe                        |
|                      1 | Santiago del Estero             |
|                      1 | Tucuman                         |
+------------------------+---------------------------------+
19 rows in set (0.001 sec)

/* 7 */

delete from compras
where cliente = (select id from clientes where nombre = "Pedro" and Apellido = "Gonzalez");
Query OK, 1 row affected (0.002 sec)

select * from compras;
+----+---------------------+---------+----------+------+
| id | fecha               | cliente | producto | cant |
+----+---------------------+---------+----------+------+
|  1 | 2022-05-12 17:30:00 |       1 |        5 |   10 |
|  2 | 2022-05-12 17:35:00 |       3 |        7 |   20 |
|  3 | 2022-05-13 17:40:00 |       3 |       12 |   30 |
|  4 | 2022-05-13 17:45:00 |       4 |        7 |   20 |
|  5 | 2022-05-14 16:15:00 |       2 |       14 |   20 |
|  6 | 2022-05-15 15:10:00 |       8 |        2 |   10 |
|  7 | 2022-05-15 15:15:00 |       7 |        3 |   50 |
|  8 | 2022-05-15 18:00:00 |       4 |        6 |   50 |
| 10 | 2022-05-16 11:30:00 |       5 |        7 |    5 |
| 11 | 2022-05-16 17:10:00 |       5 |        8 |   10 |
| 12 | 2022-05-16 17:30:00 |       1 |        9 |   30 |
| 13 | 2022-05-16 17:40:00 |       2 |       10 |   25 |
| 14 | 2022-05-17 10:30:00 |       1 |       11 |   15 |
| 15 | 2022-05-17 10:40:00 |       2 |       12 |   15 |
| 16 | 2022-05-17 15:00:00 |       5 |        1 |   20 |
| 17 | 2022-05-17 15:50:00 |       7 |        4 |   10 |
+----+---------------------+---------+----------+------+
16 rows in set (0.000 sec)

/* pedro era el cliente 6 /*

/* 8 */

select nombre, poblacion
from provincias
where poblacion > (select avg(poblacion) from provincias);
+---------------------------------+-----------+
| nombre                          | poblacion |
+---------------------------------+-----------+
| Buenos Aires                    |  17541141 |
| Cordoba                         |   3760450 |
| Mendoza                         |   1990338 |
| Santa Fe                        |   3536418 |
| Ciudad Autonoma de Buenos Aires |   3075646 |
+---------------------------------+-----------+
5 rows in set (0.002 sec)

select avg(poblacion) from provincias;
+----------------+
| avg(poblacion) |
+----------------+
|   1890698.4583 |
+----------------+
1 row in set (0.000 sec)

/* 9 */

select productos.id, compras.fecha, productos.descripcion, productos.marca, compras.cant, productos.precio
from productos, compras
where productos.id = compras.producto
having productos.marca = "Trabi";
+----+---------------------+---------------------------+-------+------+--------+
| id | fecha               | descripcion               | marca | cant | precio |
+----+---------------------+---------------------------+-------+------+--------+
|  7 | 2022-05-12 17:35:00 | Marcador de pizarra negro | Trabi |   20 |  99.99 |
|  7 | 2022-05-13 17:45:00 | Marcador de pizarra negro | Trabi |   20 |  99.99 |
|  7 | 2022-05-16 11:30:00 | Marcador de pizarra negro | Trabi |    5 |  99.99 |
|  8 | 2022-05-16 17:10:00 | Marcador de pizarra azul  | Trabi |   10 |  99.99 |
|  9 | 2022-05-16 17:30:00 | Marcador de pizarra rojo  | Trabi |   30 |  99.99 |
| 10 | 2022-05-16 17:40:00 | Marcador de pizarra verde | Trabi |   25 |  99.99 |
+----+---------------------+---------------------------+-------+------+--------+
6 rows in set (0.001 sec)

/* 10 */

select * from ciudades
where fundacion < (select fundacion from ciudades where nombre = "Quilmes");
+----+-----------------------+-----------+-----------+------------+------------+---------------------------+---------+
| id | nombre                | provincia | poblacion | superficie | fundacion  | intendente                | altitud |
+----+-----------------------+-----------+-----------+------------+------------+---------------------------+---------+
|  1 | Buenos Aires          |        24 |   2890151 |        203 | 1536-02-02 | Horacio Rodriguez Larreta |      25 |
|  2 | Cordoba               |         5 |   1317298 |        576 | 1573-07-06 | Martin Llaryora           |     670 |
|  5 | San Miguel de Tucuman |        23 |    548866 |         91 | 1565-05-31 | German Alfaro             |     431 |
|  6 | Salta                 |        16 |    520683 |         60 | 1582-04-16 | Bettina Romero            |    1187 |
|  7 | Santa Fe              |        20 |    391164 |        268 | 1573-11-15 | Emilio Jaton              |      25 |
|  8 | Corrientes            |         6 |    346334 |         90 | 1588-04-03 | Eduardo Tassano           |      62 |
| 14 | San Salvador de Jujuy |         9 |    257970 |         19 | 1593-04-19 | Raul Jorge                |    1259 |
| 16 | Santiago del Estero   |        21 |    252192 |         40 | 1553-07-25 | Norma Fuentes             |     182 |
| 30 | La Rioja              |        11 |    178872 |         14 | 1591-05-20 | Ines Brizuela y Doria     |     515 |
| 33 | San Luis              |        18 |    169947 |        256 | 1594-08-25 | Sergio Tamayo             |     709 |
+----+-----------------------+-----------+-----------+------------+------------+---------------------------+---------+
10 rows in set (0.002 sec)

select nombre, fundacion from ciudades where nombre = "Quilmes";
+---------+------------+
| nombre  | fundacion  |
+---------+------------+
| Quilmes | 1666-08-14 |
+---------+------------+
1 row in set (0.000 sec)

/* 11 */

update productos
set precio = precio*0.80
where id in (select producto from compras where cliente = 1);
Query OK, 3 rows affected, 3 warnings (0.002 sec)
Rows matched: 3  Changed: 3  Warnings: 3

select precio from productos where id in (select producto from compras where cliente = 1);
+--------+
| precio |
+--------+
| 146.39 |
|  79.99 |
|  95.99 |
+--------+
3 rows in set (0.001 sec)


