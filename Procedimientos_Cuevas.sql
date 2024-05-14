CREATE DATABASE Ventas;

USE Ventas;


/*1*/
DELIMITER $$
CREATE PROCEDURE buscar_clientes ()
BEGIN
SELECT * FROM clientes;
END $$
DELIMITER ;

CALL buscar_clientes();

CALL buscar_clientes();
+------------+---------------------------+---------------------+------------+-----------+--------------------+-----------+
| codcliente | EMPRESA                   | DIRECCI├ôN           | POBLACI├ôN  | TEL├ëFONO  | RESPONSABLE        | HISTORIAL |
+------------+---------------------------+---------------------+------------+-----------+--------------------+-----------+
| CT01       | BELTR├üN E HIJOS           | LAS FUENTES 78      | MADRID     | 914456435 | ANGEL MART├ìNEZ     | NULL      |
| CT02       | LA MODERNA                | LA PALOMA 123       | OVIEDO     | 985323434 | JUAN GARC├ìA        | NULL      |
| CT03       | EL ESPA├æOLITO             | MOTORES 34          | BARCELONA  | 934565343 | ANA FERN├üNDEZ      | NULL      |
| CT04       | EXPORTASA                 | VALLECAS 34         | MADRID     | 913452378 | ELVIRA G├ôMEZ       | NULL      |
| CT06       | CONFECCIONES AMPARO       | LOS MOROS 23        | GIJ├ôN      | 985754332 | LU├ìS ├üLVAREZ       | NULL      |
| CT07       | LA CASA DEL JUGUETE       | AM├ëRICA 45          | MADRID     | 912649987 | EL├ìAS P├ëREZ        | NULL      |
| CT08       | JUGUETER├ìA SU├üREZ         | PARIS 123           | BARCELONA  | 933457866 | JUAN GARC├ìA        | NULL      |
| CT09       | ALMAC├ëN POPULAR           | LAS FUENTES 124     | BILBAO     | 942347127 | JOS├ë ├üLVAREZ       | NULL      |
| CT10       | FERETER├ìA EL CLAVO        | PASEO DE ├üLAMOS 78  | MADRID     | 914354866 | MANUEL MEN├ëNDEZ    | NULL      |
| CT11       | JUGUETES MART├ìNEZ         | VIA LAYETANA 245    | BARCELONA  | 936628554 | FRANCISCO CUEVAS   | NULL      |
| CT12       | FERN├üNDEZ SL              | PASEO DEL MAR 45    | SANTANDER  | 942049586 | ELISA COLLADO      | NULL      |
| CT13       | CONFECCIONES ART├ìMEZ      | GENERAL PER├ôN 45    | A CORU├æA   | 981345239 | ESTEBAN PASCUAL    | NULL      |
| CT14       | DEPORTES GARC├ìA           | GUZM├üN EL BUENO 45  | MADRID     | 913299475 | ANA JIM├ëNEZ        | NULL      |
| CT15       | EXCLUSIVAS FERN├üNDEZ      | LLOBREGAT 250       | BARCELONA  | 939558365 | LUISA FERN├üNDEZ    | NULL      |
| CT16       | DEPORTES MOR├üN            | AUTONOM├ìA 45        | LUGO       | 982986944 | JOS├ë MANZANO       | NULL      |
| CT17       | BAZAR FRANCISCO           | CARMEN 45           | ZAMORA     | 980495288 | CARLOS BELTR├üN     | NULL      |
| CT18       | JUGUETES LA SONRISA       | LA BA├æEZA 67        | LE├ôN       | 987945368 | FAUSTINO P├ëREZ     | NULL      |
| CT19       | CONFECCIONES GAL├üN        | FUENCARRAL 78       | MADRID     | 913859234 | JUAN GARC├ìA        | NULL      |
| CT20       | LA CURTIDORA              | OLIVARES 3          | M├üLAGA     | 953756259 | MAR├ìA G├ôMEZ        | NULL      |
| CT21       | L├ìNEA JOVEN               | SIERPES 78          | SEVILLA    | 953452567 | ASUNCI├ôN SALADO    | NULL      |
| CT22       | BAZAR EL BARAT            | DIAGONAL 56         | BARCELONA  | 936692866 | ELISA DAPENA       | NULL      |
| CT23       | EL PALACIO DE LA MODA     | ORTEGA Y GASSET 129 | MADRID     | 927785235 | LAURA CARRASCO     | NULL      |
| CT24       | S├üEZ Y C├ìA                | INFANTA MERCEDS 23  | SEVILLA    | 954869234 | MANUEL GUERRA      | NULL      |
| CT25       | DEPORTES EL MADRILE├æO     | CASTILLA 345        | ZARAGOZA   | 976388934 | CARLOS GONZ├üLEZ    | NULL      |
| CT26       | FERRETER├ìA LA ESCOBA      | ORENSE 7            | MADRID     | 918459346 | JOS├ë GARC├ìA        | NULL      |
| CT27       | JUGUETES EL BARATO        | V├ìA AUGUSTA 245     | BARCELONA  | 933486984 | ELVIRA IGLESIAS    | NULL      |
| CT28       | CONFECCIONES HERMINIA     | CORRIDA 345         | GIJ├ôN      | 985597315 | ABEL GONZ├üLEZ      | NULL      |
| CT30       | BAZAR EL ARGENTINO        | ATOCHA 55           | MADRID     | 912495973 | ADRI├üN ├üLVAREZ     | NULL      |
| CT31       | LA TIENDA ELEGANTE        | EL COMENDADOR 67    | ZARAGOZA   | 975694035 | JOS├ë PASCUAL       | NULL      |
| CT32       | DEPORTES NAUTICOS GARC├ìA  | JUAN FERN├üNDEZ 89   | ├üVILA      | 920268648 | JUAN CONRADO       | NULL      |
| CT33       | CONFECCIONES RUIZ         | LLOBREGAT 345       | BARCELONA  | 934587615 | CARLOS SANZ        | NULL      |
| CT34       | BAZAR LA FARAONA          | CASTILLA Y LE├ôN 34  | MADRID     | 915483627 | ANGEL SANTAMAR├ìA   | NULL      |
| CT35       | FERRETER├ìA EL MARTILLO    | CASTELLANOS 205     | SALAMANCA  | 923548965 | JOAQU├ìN FERNANDEZ  | NULL      |
| CT36       | JUGUETES EDUCATIVOS SANZ  | ORENSE 89           | MADRID     | 916872354 | PEDRO IGLESIAS     | NULL      |
| CT37       | ALMACENES FERNANDEZ       | ANT├ôN 67            | TERUEL     | 978564025 | MARIA ARDANZA      | NULL      |
| CT38       | CONFECCIONES M├ôNICA       | MOTORES 67          | BARCELONA  | 935681245 | PEDRO SERRANO      | NULL      |
| CT39       | FERRETER├ìA LIMA           | VALLECAS 45         | MADRID     | 913532785 | LUIS GARC├ìA        | NULL      |
| CT40       | DEPORTES EL BRASILE├æO     | ABEL MART├ìNEZ 67    | SALAMANCA  | 921548762 | CARLOS G├ôMEZ       | NULL      |
+------------+---------------------------+---------------------+------------+-----------+--------------------+-----------+


/*2*/
DELIMITER //
CREATE PROCEDURE numcliente(numero_cliente varchar(4))
BEGIN
select * from clientes where codcliente = numero_cliente;
END //
DELIMITER ;

call numcliente ("CT01");


+------------+------------------+----------------+------------+-----------+-----------------+-----------+
| codcliente | EMPRESA          | DIRECCI├ôN      | POBLACI├ôN  | TEL├ëFONO  | RESPONSABLE     | HISTORIAL |
+------------+------------------+----------------+------------+-----------+-----------------+-----------+
| CT01       | BELTR├üN E HIJOS  | LAS FUENTES 78 | MADRID     | 914456435 | ANGEL MART├ìNEZ  | NULL      |
+------------+------------------+----------------+------------+-----------+-----------------+-----------+
1 row in set (0.000 sec)

/*3*/                                                                  
DELIMITER $$
CREATE PROCEDURE  actualiza_precio (precio_nuevo float, codigo varchar(4))
BEGIN
UPDATE productos SET precio = precio_nuevo
WHERE codarticulo = codigo;
END $$
DELIMITER ;

CALL actualiza_precio (400, 'A10'); 

select precio from productos where codarticulo = "A10";
+--------+
| precio |
+--------+
| 400    |
+--------+
1 row in set (0.000 sec)

/*4*/
DELIMITER $$
CREATE PROCEDURE descuento_deporte(in seccion_elegida varchar(10), descuento float)
BEGIN 
UPDATE productos SET precio = precio - precio * (descuento/100)
WHERE seccion = seccion_elegida;
END; $$
DELIMITER ;

CALL descuento_deporte('CERAMICA',10);

select precio from productos where seccion = "deportes";
+--------+
| precio |
+--------+
| 83.7   |
| 54     |
| 41.4   |
| 99.9   |
| 67.5   |
| 38.7   |
| 395.1  |
| 243    |
| 129.6  |
| 18.9   |
+--------+
10 rows in set (0.000 sec)

/*5*/
DELIMITER $$
CREATE PROCEDURE calcula_edad(in anio_nac int(4))
BEGIN
DECLARE edad int ;
DECLARE anio_actual int default '2022';
SET edad = anio_actual - anio_nac;
SELECT edad;
END $$
Query OK, 0 rows affected (0.005 sec)

DELIMITER ;

CALL calcula_edad(2004);
+------+
| edad |
+------+
|   18 |
+------+
1 row in set (0.000 sec)

Query OK, 0 rows affected (0.003 sec)




