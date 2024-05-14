

/* 1 */
create view deportes as
select nombrearticulo, seccion, precio
from productos
where seccion = "deportes";
Query OK, 0 rows affected (0.007 sec)


select * from deportes;

+--------------------+----------+--------+
| nombrearticulo     | seccion  | precio |
+--------------------+----------+--------+
| RAQUETA TENIS      | DEPORTES | 93,47  |
| MANCUERNAS         | DEPORTES | 60,00  |
| PISTOLA OL├ìMPICA  | DEPORTES | 46,73  |
| BAL├ôN RUGBY       | DEPORTES | 111,64 |
| BAL├ôN BALONCESTO  | DEPORTES | 75,27  |
| BAL├ôN F├ÜTBOL     | DEPORTES | 43,91  |
| CRON├ôMETRO        | DEPORTES | 439,18 |
| CA├æA DE PESCA     | DEPORTES | 270,00 |
| BOTA ALPINISMO     | DEPORTES | 144,00 |
| PALAS DE PING PONG | DEPORTES | 21,60  |
+--------------------+----------+--------+
10 rows in set (0.001 sec)

/* 2 */ 

create view ceramica as
select codigoarticulo, nombrearticulo, seccion, precio, importado
from productos
where seccion = "CERAMICA";
Query OK, 0 rows affected (0.008 sec)

select * from ceramica;
+----------------+------------------+-----------+--------+-----------+
| codigoarticulo | nombrearticulo   | seccion   | precio | importado |
+----------------+------------------+-----------+--------+-----------+
| AR11           | TUBOS            | CERAMICA  | 168,43 | VERDADERO |
| AR15           | PLATO DECORATIVO | CERAMICA  | 54,09  | VERDADERO |
| AR20           | JUEGO DE TE      | CERAMICA  | 43,27  | VERDADERO |
| AR21           | CENICERO         | CER├üMICA | 19,75  | VERDADERO |
| AR33           | MACETA           | CERAMICA  | 29,04  | FALSO     |
| AR39           | JARRA CHINA      | CERAMICA  | 127,77 | VERDADERO |
+----------------+------------------+-----------+--------+-----------+
6 rows in set (0.001 sec)

/* 3 */ 

alter view deportes as
select nombrearticulo, seccion, precio, paisdeorigen
from productos
where seccion = "deportes"
having paisdeorigen = "USA";
Query OK, 0 rows affected (0.009 sec)

select * from deportes;
+----------------+----------+--------+--------------+
| nombrearticulo | seccion  | precio | paisdeorigen |
+----------------+----------+--------+--------------+
| RAQUETA TENIS  | DEPORTES | 93,47  | USA          |
| MANCUERNAS     | DEPORTES | 60,00  | USA          |
| BAL├ôN RUGBY    | DEPORTES | 111,64 | USA          |
| CRON├ôMETRO     | DEPORTES | 439,18 | USA          |
| CA├æA DE PESCA  | DEPORTES | 270,00 | USA          |
+----------------+----------+--------+--------------+
5 rows in set (0.001 sec)

/* 4 */

drop view ceramica;
Query OK, 0 rows affected (0.004 sec)

select * from ceramica;
ERROR 1146 (42S02): Table 'ventas.ceramica' doesn't exist