DELIMITER $$
create procedure socio_m ()
begin
declare existe INT;
declare liro INT;
set @existe = (select count(*) from socio where Apellido = "Araoz" and Nombre = "Oscar");
if (@existir = 1)
THEN
Select 'Es socio';
select * from libro inner join libroautor on libro.codlibro = libroautor.codlibro 
inner join autor on autor.codautor = libroautor.codautor 
inner join ejemplar on ejemplar.codlibro = libro.codlibro where nombre = "Jose Maria" and apellido = "Martin" and Deteriorado = 0;
			
insert into prestamo(nprestamo,codsocio,fprestamo,fdevolucion,ftope) values ("",27951,curdate(),curdate()+7,curdate()+9);	
else 
Select 'No es socio';
end if;	
end $$
DELIMITER ;







call socio_m;
+----------+
| Es socio |
+----------+
| Es socio |
+----------+
1 row in set (0.000 sec)

+----------+-------------------------------------------------+---------------+-----------+------------+------------+----------+----------+----------+------------+----------+----------+----------------------+----------+--------+----------+-----------+-------------+----------+
| CodLibro | Titulo                                          | ISBN          | Editorial | AEscritura | AEdicion   | CodLibro | CodAutor | CodAutor | Nombre     | Apellido | DNI      | Mail                 | Tel      | IdEjem | CodLibro | NEjemplar | Deteriorado | Prestado |
+----------+-------------------------------------------------+---------------+-----------+------------+------------+----------+----------+----------+------------+----------+----------+----------------------+----------+--------+----------+-----------+-------------+----------+
|       83 | Arquitectura de equipos y sistemas informaticos | 9788478978687 | Ra-Ma     | 2008-03-04 | 2008-02-01 |       83 |     1452 |     1452 | Jose Maria | Martin   | 42345654 | JoseMartin@hotmail.c | 45725439 |     17 |       83 |         1 |           0 |        0 |
|       83 | Arquitectura de equipos y sistemas informaticos | 9788478978687 | Ra-Ma     | 2008-03-04 | 2008-02-01 |       83 |     1452 |     1452 | Jose Maria | Martin   | 42345654 | JoseMartin@hotmail.c | 45725439 |     18 |       83 |         2 |           0 |        0 |
|       83 | Arquitectura de equipos y sistemas informaticos | 9788478978687 | Ra-Ma     | 2008-03-04 | 2008-02-01 |       83 |     1452 |     1452 | Jose Maria | Martin   | 42345654 | JoseMartin@hotmail.c | 45725439 |     19 |       83 |         3 |           0 |        0 |
|       83 | Arquitectura de equipos y sistemas informaticos | 9788478978687 | Ra-Ma     | 2008-03-04 | 2008-02-01 |       83 |     1452 |     1452 | Jose Maria | Martin   | 42345654 | JoseMartin@hotmail.c | 45725439 |     20 |       83 |         4 |           0 |        0 |
|       83 | Arquitectura de equipos y sistemas informaticos | 9788478978687 | Ra-Ma     | 2008-03-04 | 2008-02-01 |       83 |     1452 |     1452 | Jose Maria | Martin   | 42345654 | JoseMartin@hotmail.c | 45725439 |     21 |       83 |         5 |           0 |        0 |
+----------+-------------------------------------------------+---------------+-----------+------------+------------+----------+----------+----------+------------+----------+----------+----------------------+----------+--------+----------+-----------+-------------+----------+
5 rows in set (0.009 sec)

Query OK, 1 row affected, 1 warning (0.058 sec)


select * from prestamo where codsocio = 27951;
+-----------+----------+------------+-------------+------------+
| NPrestamo | CodSocio | FPrestamo  | FDevolucion | FTope      |
+-----------+----------+------------+-------------+------------+
|        10 |    27951 | 2020-10-04 | 2020-10-13  | 2020-10-13 |
|        14 |    27951 | 2020-10-20 | 2020-10-27  | 2020-10-29 |
|        16 |    27951 | 2022-10-11 | 2022-10-18  | 2022-10-20 |
+-----------+----------+------------+-------------+------------+
3 rows in set (0.000 sec)