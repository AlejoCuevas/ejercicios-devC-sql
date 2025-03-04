create database bibloteca;
use bibloteca;

create table socio(
codsocio int auto_increment,
dni varchar(10),
nombre varchar(60),
apellido varchar(60),
direccion varchar(30),
tel varchar(15),
primary key(codsocio)
);

create table prestamo(
Nprestamo int auto_increment,
codsocio int,
Fprestamo date,
Fdevolucion date,
Ftope date,
primary key(Nprestamo),
foreign key(codsocio) references socio(codsocio)
);

create table libro(
codlibro int auto_increment,
titulo varchar(90),
ISBN varchar(15),
editorial varchar(20),
Aescritura date,
Aedicion date,
primary key(codlibro)
);

create table autor(
codautor int auto_increment,
nombre varchar(60),
apellido varchar(60),
dni varchar(10),
mail varchar(20),
tel varchar(15),
primary key(codautor)
);

create table ejemplar(
idejem int auto_increment,
codlibro int,
Nejemplar int,
deteriorado tinyint(1),
prestado tinyint(1),
primary key(idejem),
foreign key(codlibro) references libro(codlibro)
);

create table detallepre(
Nprestamo int,
idejem int,
foreign key(Nprestamo) references prestamo(Nprestamo),
foreign key(idejem) references ejemplar(idejem)
);

create table libroautor(
codlibro int,
codautor int,
foreign key(codlibro) references libro(codlibro),
foreign key(codautor) references autor(codautor)
);

    
insert into socio values
(20145, "11452452","Maria Josefuna", "Luro", "Av Nazca 21478 CABA", "47857855"),
(20154, "19785452", "Marcos", "Nevarez", "Trelles 1234 CABA", "47852154"),
(21489, "20145874", "Juliana", "Laprida", "Bacacay 10789 Haedo", "49061236"),
(21474, "22145986", "Karina", "Quirno", "Bolivia 52345 CABA", "47851414"),
(21523, "20333564", "Viviana", "Martinez", "Mendoza 123 Martinez", "45038796"),
(21614, "18754123", "Federico", "Fernandez", "Melian 234 CABA", "45012563"),
(21602, "32856922", "Manuel", "Fernandez","Av Corro 980 Haedo", "55097878"),
(22384, "39412856", "Nicolas", "Quesada", "Paz 408 Tigre", "46831512"),
(22710, "38012054", "Armando", "Alvarez", "Pedernera 12 CABA", "46874596"),
(25125, "36187002", "Rogelio", "Aragon", "Av Beiro 3456 CABA", "49876541"),
(26798, "40256321", "Mariela", "Gutierrez", "Av Nazca 10789 CABA", "45698736"),
(27890, "23256321", "Monica", "Gutierrez", "Las Lajas 2134 CABA", "48998736"),
(27951, "33256321", "Oscar", "Araoz", "Baigorria 1122 CABA", "42458736"),
(34520, "40256111", "Nicolas", "Garcia Gomez", "Peru 678 CABA", "45690036"),
(34531, "41056321", "Florencia", "Herrera", "Av de los Incas 10789 CABA", "45008736"),
(35896, "47256321", "Maria Gabriela", "Fontana", "Nutrias 10789 CABA", "45698006"),
(35930, "12256321", "Joaquin Hernan", "Gutierrez", "Av Nazca 2458 CABA", "45325736"),
(36001, "16256321", "Lucas Carlos", "Martinez", "Gomez de Acuña 10789 CABA", "45668736"),
(36785, "18356321", "Mariela Lorena", "Blanco", "Frias 125 CABA", "45632736");


insert into prestamo values
("", 20154, "2020/07/29", "2020/08/08", "2020/08/08"),
("", 22384, "2020/09/01", "2020/09/08", "2020/09/10"),
("", 26798, "2020/07/22", "2020/07/29", "2020/08/01"),
("", 21474, "2020/08/01","2020/08/08", "2020/08/10"),
("", 20154, "2020/08/02", "2020/08/11", "2020/08/11"),
("", 22384, "2020/09/15","2020/09/22", "2020/09/24"),
("", 21614, "2020/09/28", "2020/10/05", "2020/10/07"),
("", 25125, "2020/07/01", "2020/07/10", "2020/07/10"),
("", 27890, "2020/07/19","2020/07/26", "2020/07/28"),
("", 27951, "2020/10/04", "2020/10/13", "2020/10/13"),
("", 36785, "2020/10/04", "2020/10/11", "2020/10/13"),
("", 21614, "2020/10/05",  "2020/10/14", "2020/10/14"),
("", 34531, "2020/10/05",  "2020/10/12", "2020/10/14"),
("", 27951, "2020/10/20", "2020/10/27", "2020/10/29"),
("", 25125,  "2020/10/20", "2020/10/27", "2020/10/29");


insert into libro values
(83, "Arquitectura de equipos y sistemas informaticos","9788478978687", "Ra-Ma", "2008/03/04","2008/02/01"), 
(81, "Adminnistracion Organizacional","9789508020733", "Espacio", "1998/04/07", "1998/12/12"),
(82, "El trabajo en grupo y la diversidad en el aula" , "978950518817X", "Amorrortu editores", "1998/05/06", "1999/04/08"),
(40, "Manual de Diseño Web 2001","9789875260665","MP Ediciones","1997/05/26","1998/09/15"),
(11,"Los secretos de Visual Basic 5","9788441502315","ANAYA","1997/05/22","1998/10/05"),
(80,"Las inteligencias multiples en el aula","9789875000329","Manantial", "1998/02/06","1999/02/06"),
(32,"Linux a Fondo", "9789875262454","MP ediciones","2002/06/03","2004/12/08"),
(35, "Sepa como usar su PC al maximo", "9789875261334","MP ediciones","2001/08/09","2003/08/06"),
(45,"CLIPPER 5.2","9788448119169","McGRAW-HILL","2007/03/09","2010/08/21"),
(25,"NovellIntranetWare/NetWare5", "9788483220709","Prentice Hall","1998/07/15","1999/04/23"),
(55, "Tecnologías de Interconectividad de Redes", "9789701701712", "Prentice Hall", "1997/05/20", "1998/07/16"),
(112, "Delphi 5", "9788441509948", "La Biblia", "2002/02/19", "2004/02/03"),
(111, "Web 2.0:Nuevas Formas de Aprender y Participar", "9788475846484", "Laertes", "2007/02/09", "2009/09/30"),
(101, "Redes Locales", "9788478979233", "Ra-Ma", "2008/01/09", "2009/08/26"),
(102, "Data Centers hoy", "9789871609413", "Alfaomega", "2012/07/17","2014/05/28"),
(10,"El libro del PC","9788478979318","RA-MA","2011/05/03","2012/09/20"),
(91, "Etica informática y Etica e internet","9788484076445", "Edibesa", "2011/10/15", "2008/02/16"),
(92,"Programacion en turbo pascal", "9788476154496", "Mc Grow Hill", "2001/09/12", "2000/05/12"),
(21,"Hackers","9788448127864","McGrawHill","1999/11/17","2000/01/24"),
(50, "Aplicaciones ofimáticas", "9788478979240", "Ra-Ma", "2008/05/15", "2009/10/15"),
(61, "Sistemas Operativos Monopuesto","9788478979219","RA-MA", "2007/04/06","2009/03/06"),
(62, "AutoCAD 2010" ,"9788441526754", "ANAYA", "2007/04/07", "2009/05/09"),
(63, "DYANE Version 4" ,"9788436822960", "Piramide Anaya", "2005/07/10", "2009/01/11"),
(120,"El Libro de Excel 2010","9788441528956","Anaya Multimedia","2009/06/15","2011/07/22"),
(85,"Analisis y Diseño Detallado de Aplicaciones Informaticas de Gestion","9788478977765","RA-MA","2007/02/06","2007/09/06"),
(122,"Windows Me Milleniu Edition","9789875260835","MP Ediciones","2000/02/25","1999/03/22"),
(71, "Quark Xpress 8", "9788478979561", "Ra-Ma", "2009/02/02", "2010/02/02"),
(155, "Pascal esencial","9788441508788", "Paperback","2005/06/03","2008/07/01"),
(74, "Guia completa de Excell version 2002","9788448132415", "MCGRAW-HILL", "2001/01/05","2002/03/06"),
(34, "La Biblia de Linux", "9789875261204", "MP Ediciones", "2002/02/07", "2003/03/04"),
(39, "Sitios web bajo Linux", "9789875260740", "MP Ediciones", "2000/08/23", "2001/02/09"),
(38, "S.O.S. PC", "9789875262355", "MP Ediciones", "2002/01/04", "2004/09/08"),
(42, "Blogs", "9789876630337", "MP Ediciones", "1999/05/09", "2010/08/23");


insert into autor values
(1452, "Jose Maria", "Martin", "42345654", "JoseMartin@hotmail.com", "45725439"),
(1454, "Martin", "Pozuelo", "34823492", "MartinPozuelo@hotmail.com", "45743245"),
(1451, "Enrique", "Palladino", "34562812", "EnriquePalladino@hotmail.com", "45741423"),
(1455, "Leandro", "Palladino", "34234547", "LeandroPalladino@hotmail.com", "45723468"),
(1453, "Judith", "Shulman","34567928", "JudithShulman@hotmail.com", "45721564"),
(1457, "Rachel", "Lotan", "45912840", "RachelLotan@hotmail.com", "45863291"),
(1450, "Jennifer", "Whitcomb", "32948102", "JenniferWhitcomb@hotmail.com", "45824092"),
(1280, "Fernando", "Casale","20469516","Casale12@gmail.com","47896134"),
(1281, "Gustavo", "Katcheroff", "18567345", "KGustavo@hotmail.com", "41235656"),
(1511,"Harold","Davis","34764176","harold.davis@hotmail.com","43742337"),
(1680, "Thomas", "Armstrong", "94165803","Thomas@gmail.com","45677891"),
(1431,"Hector","Arena","20200456","hectoraren@gmail.com","446883692"),
(1437,"Carlos","Fernandez Garcia","2566123","Fernandezcarl@hotmail,com","46627894"),
(1285,"Jose Javier","García Badell","16897516","javiercitoGB@hotmail.com","41255498"),
(1485,"Craig","Zacker","22436465","zacker@gmail.com","34526473"),
(1265, "Merilee", "Ford", "16879456", "MeriFord@hotmail.com", "48658726"),
(1350, "Marco", "Cantu", "57152472", "marcocantu@hotmail.com", "32632625"),
(1354, "Mariona", "Grane", "26235235", "marionagrane@gmail.com", "533264235"),
(1359, "Cilia", "Willem", "53236424", "ciliawillem@gmailcom", "23523535"),
(1601, "Francisco Jose", "Molina Robles", "28654392", "molina@gmail", "1564893157"),
(1602, "German", "Pacio", "31698740", "GPacio@hotmail", "1564970238"),
(1510,"Jose Higinio","Cernuda Menendez","1485697548","jose.cernuda@hotmail.com","916584280"),
(1541, "Deborah", "Johnson", "5356982", "deborahjohnson@hotmail.com", "41192011"),
(1542, "Luis Joyanes", "Aguilar", "14050558", "luisjoyanesaquilar@gmail.com", "42112593"),
(1481,"Stuart","McClure","22345324","stuart@gmail.com","44327731"),
(1482,"Joel","Scambray","24345121","joel@gmail.com","45487989"),
(1483,"George","Kurtz","30429122","george@gmail.com","35279399"),
(1260, "Laura", "Raya Gonzalez", "18271175", "laug@gmail.com", "44579823"),
(1261, "David", "Miraut Andres", "21674142", "ddachaca@gmail.com", "49021565"),
(1262, "José Luis", "Raya Cabrera", "22564789", "cabreraj@gmail.com", "45612456"),
(1321, "Laura Raya", "Gonzalez", "40156789", "LauGon@gmail.com", "1562387895"),
(1322, "Miguel Santesmases", "Mestre", "36528160", "MSM@gmail.com", "1120568094"),
(1323, "Juan Ignacio", "deTena", "37657894", "JuanTena@gmail.com", "1526399311"),
(1170,"Mark","Dodge","24567056","mark_dodge@gmail.com","36456756"),
(1171,"Craig","Stinson","30183495","craig_stinson@gmail.com","36276899"),
(1459,"Mario G.","Piattini Velthuis","13556988","MarioG@gmail.com","45618792"),
(1500,"José A.","Calvo Manzano Villalón","14578945","JoseA@hotmail.com","48962354"),
(1456,"Joaquín","Cervera Bravo","11456897","JoaquinBravo@gmail.com","47895647"),
(1501,"Luis","Fernández Sanz","12874569","LuisSanz@hotmail.com","46879112"),
(1172,"Ricardo","Goldberger","13425982","riqui@gmail.com","1112345678"),
(1675, "José", "Coviella", "40321321", "jose@hotmail.com", "44987654");


insert into ejemplar values
("",155,12,0,1),
("",155,10,0,0),
('',74,2,1,0),
('',74,3,0,0),
('',74,5,0,0),
('',34,2,1,0),
('',34,4,0,0),
('',34,5,1,0),
('',39,1,0,0),
('',39,3,0,0),
('',39,4,0,0),
('',39,5,0,0),
('',38,10,0,0),
('',38,11,1,0),
('',38,12,0,0),
('',38,13,0,0),
("",83,1,0,0),
("",83,2,0,0),
("",83,3,0,0),
("",83,4,0,0),
("",83,5,0,0),
("",81,1,0,0),
("",81,2,0,0),
("",81,3,0,0),
("",81,4,0,0),
("",81,5,0,0),
("",81,6,0,0),
("",81,7,0,0),
("",82,1,0,0),
("",82,2,0,0),
("",82,3,1,0),
("",82,4,0,0),
("",82,5,0,0),
("",40,12,1,1),
("",40,10,0,1),
("",40,8,1,1),
("",40,7,1,1),
("",40,6,0,1),
('',11,25,0,0),
('',11,35,1,0),
('',11,45,1,0),
('',11,55,1,0),
('',11,65,1,0),
("",80,10,1,0),
("",80,15,0,0),
("",80,17,0,0),
("",80,19,0,0),
("",80,20,0,0),
("",32,1,0,0),
("",32,8,0,0),
("",32,6,0,0),
("",32,3,0,0),
("",35,2,0,0),
("",35,3,0,0),
("",35,4,0,0),
("",35,6,0,0),
('',45,12,0,0),
('',45,13,0,0),
('',45,14,0,0),
('',45,16,0,0),
("",25,35,0,1),
("",25,33,0,1),
("",25,15,0,1),
("",25,65,0,1),
("",25,43,0,1),
("",55,1,0,0),
("",55,2,0,0),
("",55,3,0,0),
("",55,4,0,0),
("",55,5,0,0),
('',112,1,0,0),
('',112,2,0,0),
('',112,3,0,0),
('',112,4,0,0),
('',112,5,0,0),
('',111,1,0,0),
('',111,2,0,0),
('',111,3,0,0),
('',111,4,0,0),
('',111,5,0,0),
("",101,1,0,0),
("",101,10,0,0),
("",101,21,0,0),
("",101,15,0,0),
("",102,12,0,0),
("",102,6,0,0),
("",102,2,0,0),
('',10,26,0,0),
('',10,36,0,0),
('',10,46,0,0),
('',10,56,0,0),
('',10,66,0,0),
("",91,1,0,0),
("",91,2,0,0),
("",91,3,0,0),
("",91,4,0,0),
("",91,5,0,0),
("",92,15,0,0),
("",92,9,0,0),
("",92,75,0,0),
("",92,56,0,0),
("",92,13,0,0),
(" ",21,11,0,0),
(" ",21,23,0,0),
(" ",21,33,0,0),
(" ",21,14,0,0),
(" ",21,15,0,0),
('',50,23,0,1),
('',50,20,0,1),
('',50,2,0,1),
('',50,3,1,1),
("",61,1,0,0),
("",61,2,0,0),
("",61,3,0,0),
("",61,4,0,0),
("",61,5,0,0),
("",62,4,0,0),
("",62,5,0,0),
("",62,6,0,0),
("",62,7,0,0),
("",62,8,0,0),
("",63,15,0,0),
("",63,16,0,0),
("",63,17,0,0),
("",63,18,0,0),
("",63,19,0,0),
("",120,1,0,0),
("",120,3,0,0),
("",120,6,0,0),
("",120,10,0,0),
("",120,15,0,0),
("",85,01,0,0),
("",85,02,0,0),
("",85,03,0,0),
("",85,04,0,0),
("",85,05,0,0),
("",122,1,0,0),
("",122,3,0,0),
("",122,6,0,0),
("",122,8,0,0),
("",122,20,0,0),
("",71,1,0,0),
("",71,2,0,0),
("",71,3,0,0),
("",71,4,0,0),
("",71,5,0,0),
('',42,33,0,0),
('',42,24,0,0),
('',42,22,0,0),
('',42,21,0,0),
('',42,20,0,0),
('',42,19,0,0),
('',42,17,0,0);


insert into detallepre values
(1,34),
(1,95),
(2,50),
(3,17),
(3,21),
(4,35),
(4,3),
(4,62),
(5,54),
(5,22),
(6,97),
(6,108),
(7,106),
(7,110),
(8,112),
(9,151),
(9,100),
(9,64),
(9,36),
(10,111),
(11,61),
(11,109),
(12,63),
(12,38),
(13,64),
(14,37),
(1,50),
(4,50),
(4,97),
(5,64),
(6,111),
(6,112),
(7,111),
(9,38),
(11,22),
(11,95),
(13,100),
(14,3),
(15,22),
(15,65);


insert into libroautor values
(83, 1452),
(83, 1454),
(81, 1451),
(81, 1455),
(82, 1453),
(82, 1457),
(82, 1450),
(40, 1280),
(40, 1281),
(11, 1511),
(80, 1680),
(32, 1431),
(35, 1437),
(38, 1437),
(74,1170),
(45, 1285),
(25, 1485),
(55, 1265),
(112, 1350),
(111, 1354),
(111, 1359),
(101, 1601),
(102, 1602),
(10, 1510),
(91, 1541),
(92, 1542),
(155,1350),
(34, 1431),
(39, 1431),
(21,1481),
(21,1482),
(21,1483),
(50, 1260),
(50, 1261),
(42, 1280),
(50, 1262),
(61, 1321),
(62, 1322),
(63, 1323),
(120, 1170),
(120, 1171),
(85, 1459),
(85, 1500),
(85, 1456),
(85, 1501),
(122, 1172),
(71, 1675);


select * from socio;
+----------+----------+----------------+--------------+----------------------------+----------+
| codsocio | dni      | nombre         | apellido     | direccion                  | tel      |
+----------+----------+----------------+--------------+----------------------------+----------+
|    20145 | 11452452 | Maria Josefuna | Luro         | Av Nazca 21478 CABA        | 47857855 |
|    20154 | 19785452 | Marcos         | Nevarez      | Trelles 1234 CABA          | 47852154 |
|    21474 | 22145986 | Karina         | Quirno       | Bolivia 52345 CABA         | 47851414 |
|    21489 | 20145874 | Juliana        | Laprida      | Bacacay 10789 Haedo        | 49061236 |
|    21523 | 20333564 | Viviana        | Martinez     | Mendoza 123 Martinez       | 45038796 |
|    21602 | 32856922 | Manuel         | Fernandez    | Av Corro 980 Haedo         | 55097878 |
|    21614 | 18754123 | Federico       | Fernandez    | Melian 234 CABA            | 45012563 |
|    22384 | 39412856 | Nicolas        | Quesada      | Paz 408 Tigre              | 46831512 |
|    22710 | 38012054 | Armando        | Alvarez      | Pedernera 12 CABA          | 46874596 |
|    25125 | 36187002 | Rogelio        | Aragon       | Av Beiro 3456 CABA         | 49876541 |
|    26798 | 40256321 | Mariela        | Gutierrez    | Av Nazca 10789 CABA        | 45698736 |
|    27890 | 23256321 | Monica         | Gutierrez    | Las Lajas 2134 CABA        | 48998736 |
|    27951 | 33256321 | Oscar          | Araoz        | Baigorria 1122 CABA        | 42458736 |
|    34520 | 40256111 | Nicolas        | Garcia Gomez | Peru 678 CABA              | 45690036 |
|    34531 | 41056321 | Florencia      | Herrera      | Av de los Incas 10789 CABA | 45008736 |
|    35896 | 47256321 | Maria Gabriela | Fontana      | Nutrias 10789 CABA         | 45698006 |
|    35930 | 12256321 | Joaquin Hernan | Gutierrez    | Av Nazca 2458 CABA         | 45325736 |
|    36001 | 16256321 | Lucas Carlos   | Martinez     | Gomez de Acu?a 10789 CABA  | 45668736 |
|    36785 | 18356321 | Mariela Lorena | Blanco       | Frias 125 CABA             | 45632736 |
+----------+----------+----------------+--------------+----------------------------+----------+
19 rows in set (0.000 sec)


select * from prestamo;
+-----------+----------+------------+-------------+------------+
| Nprestamo | codsocio | Fprestamo  | Fdevolucion | Ftope      |
+-----------+----------+------------+-------------+------------+
|         1 |    20154 | 2020-07-29 | 2020-08-08  | 2020-08-08 |
|         2 |    22384 | 2020-09-01 | 2020-09-08  | 2020-09-10 |
|         3 |    26798 | 2020-07-22 | 2020-07-29  | 2020-08-01 |
|         4 |    21474 | 2020-08-01 | 2020-08-08  | 2020-08-10 |
|         5 |    20154 | 2020-08-02 | 2020-08-11  | 2020-08-11 |
|         6 |    22384 | 2020-09-15 | 2020-09-22  | 2020-09-24 |
|         7 |    21614 | 2020-09-28 | 2020-10-05  | 2020-10-07 |
|         8 |    25125 | 2020-07-01 | 2020-07-10  | 2020-07-10 |
|         9 |    27890 | 2020-07-19 | 2020-07-26  | 2020-07-28 |
|        10 |    27951 | 2020-10-04 | 2020-10-13  | 2020-10-13 |
|        11 |    36785 | 2020-10-04 | 2020-10-11  | 2020-10-13 |
|        12 |    21614 | 2020-10-05 | 2020-10-14  | 2020-10-14 |
|        13 |    34531 | 2020-10-05 | 2020-10-12  | 2020-10-14 |
|        14 |    27951 | 2020-10-20 | 2020-10-27  | 2020-10-29 |
|        15 |    25125 | 2020-10-20 | 2020-10-27  | 2020-10-29 |
+-----------+----------+------------+-------------+------------+
15 rows in set (0.000 sec)

select * from libro;
+----------+---------------------------------------------------------------------+---------------+--------------------+------------+------------+
| codlibro | titulo                                                              | ISBN          | editorial          | Aescritura | Aedicion   |
+----------+---------------------------------------------------------------------+---------------+--------------------+------------+------------+
|       10 | El libro del PC                                                     | 9788478979318 | RA-MA              | 2011-05-03 | 2012-09-20 |
|       11 | Los secretos de Visual Basic 5                                      | 9788441502315 | ANAYA              | 1997-05-22 | 1998-10-05 |
|       21 | Hackers                                                             | 9788448127864 | McGrawHill         | 1999-11-17 | 2000-01-24 |
|       25 | NovellIntranetWare/NetWare5                                         | 9788483220709 | Prentice Hall      | 1998-07-15 | 1999-04-23 |
|       32 | Linux a Fondo                                                       | 9789875262454 | MP ediciones       | 2002-06-03 | 2004-12-08 |
|       34 | La Biblia de Linux                                                  | 9789875261204 | MP Ediciones       | 2002-02-07 | 2003-03-04 |
|       35 | Sepa como usar su PC al maximo                                      | 9789875261334 | MP ediciones       | 2001-08-09 | 2003-08-06 |
|       38 | S.O.S. PC                                                           | 9789875262355 | MP Ediciones       | 2002-01-04 | 2004-09-08 |
|       39 | Sitios web bajo Linux                                               | 9789875260740 | MP Ediciones       | 2000-08-23 | 2001-02-09 |
|       40 | Manual de Dise?o Web 2001                                           | 9789875260665 | MP Ediciones       | 1997-05-26 | 1998-09-15 |
|       42 | Blogs                                                               | 9789876630337 | MP Ediciones       | 1999-05-09 | 2010-08-23 |
|       45 | CLIPPER 5.2                                                         | 9788448119169 | McGRAW-HILL        | 2007-03-09 | 2010-08-21 |
|       50 | Aplicaciones ofim?ticas                                             | 9788478979240 | Ra-Ma              | 2008-05-15 | 2009-10-15 |
|       55 | Tecnolog?as de Interconectividad de Redes                           | 9789701701712 | Prentice Hall      | 1997-05-20 | 1998-07-16 |
|       61 | Sistemas Operativos Monopuesto                                      | 9788478979219 | RA-MA              | 2007-04-06 | 2009-03-06 |
|       62 | AutoCAD 2010                                                        | 9788441526754 | ANAYA              | 2007-04-07 | 2009-05-09 |
|       63 | DYANE Version 4                                                     | 9788436822960 | Piramide Anaya     | 2005-07-10 | 2009-01-11 |
|       71 | Quark Xpress 8                                                      | 9788478979561 | Ra-Ma              | 2009-02-02 | 2010-02-02 |
|       74 | Guia completa de Excell version 2002                                | 9788448132415 | MCGRAW-HILL        | 2001-01-05 | 2002-03-06 |
|       80 | Las inteligencias multiples en el aula                              | 9789875000329 | Manantial          | 1998-02-06 | 1999-02-06 |
|       81 | Adminnistracion Organizacional                                      | 9789508020733 | Espacio            | 1998-04-07 | 1998-12-12 |
|       82 | El trabajo en grupo y la diversidad en el aula                      | 978950518817X | Amorrortu editores | 1998-05-06 | 1999-04-08 |
|       83 | Arquitectura de equipos y sistemas informaticos                     | 9788478978687 | Ra-Ma              | 2008-03-04 | 2008-02-01 |
|       85 | Analisis y Dise?o Detallado de Aplicaciones Informaticas de Gestion | 9788478977765 | RA-MA              | 2007-02-06 | 2007-09-06 |
|       91 | Etica inform?tica y Etica e internet                                | 9788484076445 | Edibesa            | 2011-10-15 | 2008-02-16 |
|       92 | Programacion en turbo pascal                                        | 9788476154496 | Mc Grow Hill       | 2001-09-12 | 2000-05-12 |
|      101 | Redes Locales                                                       | 9788478979233 | Ra-Ma              | 2008-01-09 | 2009-08-26 |
|      102 | Data Centers hoy                                                    | 9789871609413 | Alfaomega          | 2012-07-17 | 2014-05-28 |
|      111 | Web 2.0:Nuevas Formas de Aprender y Participar                      | 9788475846484 | Laertes            | 2007-02-09 | 2009-09-30 |
|      112 | Delphi 5                                                            | 9788441509948 | La Biblia          | 2002-02-19 | 2004-02-03 |
|      120 | El Libro de Excel 2010                                              | 9788441528956 | Anaya Multimedia   | 2009-06-15 | 2011-07-22 |
|      122 | Windows Me Milleniu Edition                                         | 9789875260835 | MP Ediciones       | 2000-02-25 | 1999-03-22 |
|      155 | Pascal esencial                                                     | 9788441508788 | Paperback          | 2005-06-03 | 2008-07-01 |
+----------+---------------------------------------------------------------------+---------------+--------------------+------------+------------+
33 rows in set (0.000 sec)

MariaDB [bibloteca]> select * from autor;
+----------+--------------------+------------------------+------------+----------------------+------------+
| codautor | nombre             | apellido               | dni        | mail                 | tel        |
+----------+--------------------+------------------------+------------+----------------------+------------+
|     1170 | Mark               | Dodge                  | 24567056   | mark_dodge@gmail.com | 36456756   |
|     1171 | Craig              | Stinson                | 30183495   | craig_stinson@gmail. | 36276899   |
|     1172 | Ricardo            | Goldberger             | 13425982   | riqui@gmail.com      | 1112345678 |
|     1260 | Laura              | Raya Gonzalez          | 18271175   | laug@gmail.com       | 44579823   |
|     1261 | David              | Miraut Andres          | 21674142   | ddachaca@gmail.com   | 49021565   |
|     1262 | Jos? Luis          | Raya Cabrera           | 22564789   | cabreraj@gmail.com   | 45612456   |
|     1265 | Merilee            | Ford                   | 16879456   | MeriFord@hotmail.com | 48658726   |
|     1280 | Fernando           | Casale                 | 20469516   | Casale12@gmail.com   | 47896134   |
|     1281 | Gustavo            | Katcheroff             | 18567345   | KGustavo@hotmail.com | 41235656   |
|     1285 | Jose Javier        | Garc?a Badell          | 16897516   | javiercitoGB@hotmail | 41255498   |
|     1321 | Laura Raya         | Gonzalez               | 40156789   | LauGon@gmail.com     | 1562387895 |
|     1322 | Miguel Santesmases | Mestre                 | 36528160   | MSM@gmail.com        | 1120568094 |
|     1323 | Juan Ignacio       | deTena                 | 37657894   | JuanTena@gmail.com   | 1526399311 |
|     1350 | Marco              | Cantu                  | 57152472   | marcocantu@hotmail.c | 32632625   |
|     1354 | Mariona            | Grane                  | 26235235   | marionagrane@gmail.c | 533264235  |
|     1359 | Cilia              | Willem                 | 53236424   | ciliawillem@gmailcom | 23523535   |
|     1431 | Hector             | Arena                  | 20200456   | hectoraren@gmail.com | 446883692  |
|     1437 | Carlos             | Fernandez Garcia       | 2566123    | Fernandezcarl@hotmai | 46627894   |
|     1450 | Jennifer           | Whitcomb               | 32948102   | JenniferWhitcomb@hot | 45824092   |
|     1451 | Enrique            | Palladino              | 34562812   | EnriquePalladino@hot | 45741423   |
|     1452 | Jose Maria         | Martin                 | 42345654   | JoseMartin@hotmail.c | 45725439   |
|     1453 | Judith             | Shulman                | 34567928   | JudithShulman@hotmai | 45721564   |
|     1454 | Martin             | Pozuelo                | 34823492   | MartinPozuelo@hotmai | 45743245   |
|     1455 | Leandro            | Palladino              | 34234547   | LeandroPalladino@hot | 45723468   |
|     1456 | Joaqu?n            | Cervera Bravo          | 11456897   | JoaquinBravo@gmail.c | 47895647   |
|     1457 | Rachel             | Lotan                  | 45912840   | RachelLotan@hotmail. | 45863291   |
|     1459 | Mario G.           | Piattini Velthuis      | 13556988   | MarioG@gmail.com     | 45618792   |
|     1481 | Stuart             | McClure                | 22345324   | stuart@gmail.com     | 44327731   |
|     1482 | Joel               | Scambray               | 24345121   | joel@gmail.com       | 45487989   |
|     1483 | George             | Kurtz                  | 30429122   | george@gmail.com     | 35279399   |
|     1485 | Craig              | Zacker                 | 22436465   | zacker@gmail.com     | 34526473   |
|     1500 | Jos? A.            | Calvo Manzano Villal?n | 14578945   | JoseA@hotmail.com    | 48962354   |
|     1501 | Luis               | Fern?ndez Sanz         | 12874569   | LuisSanz@hotmail.com | 46879112   |
|     1510 | Jose Higinio       | Cernuda Menendez       | 1485697548 | jose.cernuda@hotmail | 916584280  |
|     1511 | Harold             | Davis                  | 34764176   | harold.davis@hotmail | 43742337   |
|     1541 | Deborah            | Johnson                | 5356982    | deborahjohnson@hotma | 41192011   |
|     1542 | Luis Joyanes       | Aguilar                | 14050558   | luisjoyanesaquilar@g | 42112593   |
|     1601 | Francisco Jose     | Molina Robles          | 28654392   | molina@gmail         | 1564893157 |
|     1602 | German             | Pacio                  | 31698740   | GPacio@hotmail       | 1564970238 |
|     1675 | Jos?               | Coviella               | 40321321   | jose@hotmail.com     | 44987654   |
|     1680 | Thomas             | Armstrong              | 94165803   | Thomas@gmail.com     | 45677891   |
+----------+--------------------+------------------------+------------+----------------------+------------+
41 rows in set (0.000 sec)

select * from ejemplar;
+--------+----------+-----------+-------------+----------+
| idejem | codlibro | Nejemplar | deteriorado | prestado |
+--------+----------+-----------+-------------+----------+
|      1 |      155 |        12 |           0 |        1 |
|      2 |      155 |        10 |           0 |        0 |
|      3 |       74 |         2 |           1 |        0 |
|      4 |       74 |         3 |           0 |        0 |
|      5 |       74 |         5 |           0 |        0 |
|      6 |       34 |         2 |           1 |        0 |
|      7 |       34 |         4 |           0 |        0 |
|      8 |       34 |         5 |           1 |        0 |
|      9 |       39 |         1 |           0 |        0 |
|     10 |       39 |         3 |           0 |        0 |
|     11 |       39 |         4 |           0 |        0 |
|     12 |       39 |         5 |           0 |        0 |
|     13 |       38 |        10 |           0 |        0 |
|     14 |       38 |        11 |           1 |        0 |
|     15 |       38 |        12 |           0 |        0 |
|     16 |       38 |        13 |           0 |        0 |
|     17 |       83 |         1 |           0 |        0 |
|     18 |       83 |         2 |           0 |        0 |
|     19 |       83 |         3 |           0 |        0 |
|     20 |       83 |         4 |           0 |        0 |
|     21 |       83 |         5 |           0 |        0 |
|     22 |       81 |         1 |           0 |        0 |
|     23 |       81 |         2 |           0 |        0 |
|     24 |       81 |         3 |           0 |        0 |
|     25 |       81 |         4 |           0 |        0 |
|     26 |       81 |         5 |           0 |        0 |
|     27 |       81 |         6 |           0 |        0 |
|     28 |       81 |         7 |           0 |        0 |
|     29 |       82 |         1 |           0 |        0 |
|     30 |       82 |         2 |           0 |        0 |
|     31 |       82 |         3 |           1 |        0 |
|     32 |       82 |         4 |           0 |        0 |
|     33 |       82 |         5 |           0 |        0 |
|     34 |       40 |        12 |           1 |        1 |
|     35 |       40 |        10 |           0 |        1 |
|     36 |       40 |         8 |           1 |        1 |
|     37 |       40 |         7 |           1 |        1 |
|     38 |       40 |         6 |           0 |        1 |
|     39 |       11 |        25 |           0 |        0 |
|     40 |       11 |        35 |           1 |        0 |
|     41 |       11 |        45 |           1 |        0 |
|     42 |       11 |        55 |           1 |        0 |
|     43 |       11 |        65 |           1 |        0 |
|     44 |       80 |        10 |           1 |        0 |
|     45 |       80 |        15 |           0 |        0 |
|     46 |       80 |        17 |           0 |        0 |
|     47 |       80 |        19 |           0 |        0 |
|     48 |       80 |        20 |           0 |        0 |
|     49 |       32 |         1 |           0 |        0 |
|     50 |       32 |         8 |           0 |        0 |
|     51 |       32 |         6 |           0 |        0 |
|     52 |       32 |         3 |           0 |        0 |
|     53 |       35 |         2 |           0 |        0 |
|     54 |       35 |         3 |           0 |        0 |
|     55 |       35 |         4 |           0 |        0 |
|     56 |       35 |         6 |           0 |        0 |
|     57 |       45 |        12 |           0 |        0 |
|     58 |       45 |        13 |           0 |        0 |
|     59 |       45 |        14 |           0 |        0 |
|     60 |       45 |        16 |           0 |        0 |
|     61 |       25 |        35 |           0 |        1 |
|     62 |       25 |        33 |           0 |        1 |
|     63 |       25 |        15 |           0 |        1 |
|     64 |       25 |        65 |           0 |        1 |
|     65 |       25 |        43 |           0 |        1 |
|     66 |       55 |         1 |           0 |        0 |
|     67 |       55 |         2 |           0 |        0 |
|     68 |       55 |         3 |           0 |        0 |
|     69 |       55 |         4 |           0 |        0 |
|     70 |       55 |         5 |           0 |        0 |
|     71 |      112 |         1 |           0 |        0 |
|     72 |      112 |         2 |           0 |        0 |
|     73 |      112 |         3 |           0 |        0 |
|     74 |      112 |         4 |           0 |        0 |
|     75 |      112 |         5 |           0 |        0 |
|     76 |      111 |         1 |           0 |        0 |
|     77 |      111 |         2 |           0 |        0 |
|     78 |      111 |         3 |           0 |        0 |
|     79 |      111 |         4 |           0 |        0 |
|     80 |      111 |         5 |           0 |        0 |
|     81 |      101 |         1 |           0 |        0 |
|     82 |      101 |        10 |           0 |        0 |
|     83 |      101 |        21 |           0 |        0 |
|     84 |      101 |        15 |           0 |        0 |
|     85 |      102 |        12 |           0 |        0 |
|     86 |      102 |         6 |           0 |        0 |
|     87 |      102 |         2 |           0 |        0 |
|     88 |       10 |        26 |           0 |        0 |
|     89 |       10 |        36 |           0 |        0 |
|     90 |       10 |        46 |           0 |        0 |
|     91 |       10 |        56 |           0 |        0 |
|     92 |       10 |        66 |           0 |        0 |
|     93 |       91 |         1 |           0 |        0 |
|     94 |       91 |         2 |           0 |        0 |
|     95 |       91 |         3 |           0 |        0 |
|     96 |       91 |         4 |           0 |        0 |
|     97 |       91 |         5 |           0 |        0 |
|     98 |       92 |        15 |           0 |        0 |
|     99 |       92 |         9 |           0 |        0 |
|    100 |       92 |        75 |           0 |        0 |
|    101 |       92 |        56 |           0 |        0 |
|    102 |       92 |        13 |           0 |        0 |
|    103 |       21 |        11 |           0 |        0 |
|    104 |       21 |        23 |           0 |        0 |
|    105 |       21 |        33 |           0 |        0 |
|    106 |       21 |        14 |           0 |        0 |
|    107 |       21 |        15 |           0 |        0 |
|    108 |       50 |        23 |           0 |        1 |
|    109 |       50 |        20 |           0 |        1 |
|    110 |       50 |         2 |           0 |        1 |
|    111 |       50 |         3 |           1 |        1 |
|    112 |       61 |         1 |           0 |        0 |
|    113 |       61 |         2 |           0 |        0 |
|    114 |       61 |         3 |           0 |        0 |
|    115 |       61 |         4 |           0 |        0 |
|    116 |       61 |         5 |           0 |        0 |
|    117 |       62 |         4 |           0 |        0 |
|    118 |       62 |         5 |           0 |        0 |
|    119 |       62 |         6 |           0 |        0 |
|    120 |       62 |         7 |           0 |        0 |
|    121 |       62 |         8 |           0 |        0 |
|    122 |       63 |        15 |           0 |        0 |
|    123 |       63 |        16 |           0 |        0 |
|    124 |       63 |        17 |           0 |        0 |
|    125 |       63 |        18 |           0 |        0 |
|    126 |       63 |        19 |           0 |        0 |
|    127 |      120 |         1 |           0 |        0 |
|    128 |      120 |         3 |           0 |        0 |
|    129 |      120 |         6 |           0 |        0 |
|    130 |      120 |        10 |           0 |        0 |
|    131 |      120 |        15 |           0 |        0 |
|    132 |       85 |         1 |           0 |        0 |
|    133 |       85 |         2 |           0 |        0 |
|    134 |       85 |         3 |           0 |        0 |
|    135 |       85 |         4 |           0 |        0 |
|    136 |       85 |         5 |           0 |        0 |
|    137 |      122 |         1 |           0 |        0 |
|    138 |      122 |         3 |           0 |        0 |
|    139 |      122 |         6 |           0 |        0 |
|    140 |      122 |         8 |           0 |        0 |
|    141 |      122 |        20 |           0 |        0 |
|    142 |       71 |         1 |           0 |        0 |
|    143 |       71 |         2 |           0 |        0 |
|    144 |       71 |         3 |           0 |        0 |
|    145 |       71 |         4 |           0 |        0 |
|    146 |       71 |         5 |           0 |        0 |
|    147 |       42 |        33 |           0 |        0 |
|    148 |       42 |        24 |           0 |        0 |
|    149 |       42 |        22 |           0 |        0 |
|    150 |       42 |        21 |           0 |        0 |
|    151 |       42 |        20 |           0 |        0 |
|    152 |       42 |        19 |           0 |        0 |
|    153 |       42 |        17 |           0 |        0 |
+--------+----------+-----------+-------------+----------+
153 rows in set (0.000 sec)

select * from detallepre;
+-----------+--------+
| Nprestamo | idejem |
+-----------+--------+
|         1 |     34 |
|         1 |     95 |
|         2 |     50 |
|         3 |     17 |
|         3 |     21 |
|         4 |     35 |
|         4 |      3 |
|         4 |     62 |
|         5 |     54 |
|         5 |     22 |
|         6 |     97 |
|         6 |    108 |
|         7 |    106 |
|         7 |    110 |
|         8 |    112 |
|         9 |    151 |
|         9 |    100 |
|         9 |     64 |
|         9 |     36 |
|        10 |    111 |
|        11 |     61 |
|        11 |    109 |
|        12 |     63 |
|        12 |     38 |
|        13 |     64 |
|        14 |     37 |
|         1 |     50 |
|         4 |     50 |
|         4 |     97 |
|         5 |     64 |
|         6 |    111 |
|         6 |    112 |
|         7 |    111 |
|         9 |     38 |
|        11 |     22 |
|        11 |     95 |
|        13 |    100 |
|        14 |      3 |
|        15 |     22 |
|        15 |     65 |
+-----------+--------+
40 rows in set (0.000 sec)

select * from libroautor;
+----------+----------+
| codlibro | codautor |
+----------+----------+
|       83 |     1452 |
|       83 |     1454 |
|       81 |     1451 |
|       81 |     1455 |
|       82 |     1453 |
|       82 |     1457 |
|       82 |     1450 |
|       40 |     1280 |
|       40 |     1281 |
|       11 |     1511 |
|       80 |     1680 |
|       32 |     1431 |
|       35 |     1437 |
|       38 |     1437 |
|       74 |     1170 |
|       45 |     1285 |
|       25 |     1485 |
|       55 |     1265 |
|      112 |     1350 |
|      111 |     1354 |
|      111 |     1359 |
|      101 |     1601 |
|      102 |     1602 |
|       10 |     1510 |
|       91 |     1541 |
|       92 |     1542 |
|      155 |     1350 |
|       34 |     1431 |
|       39 |     1431 |
|       21 |     1481 |
|       21 |     1482 |
|       21 |     1483 |
|       50 |     1260 |
|       50 |     1261 |
|       42 |     1280 |
|       50 |     1262 |
|       61 |     1321 |
|       62 |     1322 |
|       63 |     1323 |
|      120 |     1170 |
|      120 |     1171 |
|       85 |     1459 |
|       85 |     1500 |
|       85 |     1456 |
|       85 |     1501 |
|      122 |     1172 |
|       71 |     1675 |
+----------+----------+
47 rows in set (0.000 sec)

delimiter $$
create procedure cliente ()
begin
declare nSocio int(11);
declare nEjem int(11);
declare numPrestamo int(11);


if exists (select * from socio where nombre = "Oscar" and apellido = "Araoz") then
if exists(    select libro.codLibro from libroautor
inner join libro on libro.codLibro = libroautor.codlibro
inner join Autor on autor.codautor = libroautor.codautor
where Autor.Nombre = "Jose Maria" and Autor.Apellido = "Martin" and libroautor.codlibro IN(
select codlibro from ejemplar where deteriorado != 0))
then select "no existe" as "mensaje";
else
set nSocio = (
select codSocio from Socio where nombre = "Oscar" and apellido = "Araoz"
);
insert into prestamo values
("", nSocio, curdate(), curdate(), curdate());  /*devuelve fecha*/
update prestamo set Fdevolucion = DATE_ADD(Fdevolucion, interval 7 day);
update prestamo set Ftope = DATE_ADD(Fdevolucion, intervaL 2 day);
set  nEjem = (
select ejemplar.idejem from libroautor
inner join ejemplar on ejemplar.codLibro = libroautor.codlibro
inner join autor on autor.codautor = libroautor.codautor
where Autor.Nombre = "Jose Maria" and Autor.Apellido = "Martin"
and deteriorado = 0
order by RAND()
limit 1
);
set numPrestamo = (
select max(nPrestamo) from prestamo
where codsocio in(
select codSocio from socio
where nombre = "Oscar" and apellido = "Araoz"
)
);
insert into detallepre values
(numPrestamo, nEjem);
select "registrado" as "mensaje";
end if ;
else
select ("Este usuario no existe") as "mensaje";
end if ;
end $$
Query OK, 0 rows affected (0.058 sec)
delimiter ;
call cliente();
+------------+
| mensaje    |
+------------+
| registrado |
+------------+
1 row in set (0.125 sec)

Query OK, 34 rows affected (0.129 sec)

