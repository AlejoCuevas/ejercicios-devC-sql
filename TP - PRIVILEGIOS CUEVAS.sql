
/* 1 */

create user alejo@localhost identified by "1234";
Query OK, 0 rows affected (0.001 sec)


/* 2 */
MariaDB [(none)]> select user from mysql.user;
+---------+
| User    |
+---------+
| root    |
| root    |
| alejo   |
| bastian |
| pma     |
| root    |
+---------+
6 rows in set (0.040 sec)

/* 3 */
MariaDB [(none)]> grant select, update on ventas.clientes to alejo@localhost;
Query OK, 0 rows affected (0.007 sec)


/* 4 */
MariaDB [(none)]> show grants for alejo@localhost;
+--------------------------------------------------------------------------------------------------------------+
| Grants for alejo@localhost                                                                                   |
+--------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `alejo`@`localhost` IDENTIFIED BY PASSWORD '*A4B6157319038724E3560894F7F932C8886EBFCF' |
| GRANT SELECT, UPDATE ON `ventas`.`clientes` TO `alejo`@`localhost`                                           |
+--------------------------------------------------------------------------------------------------------------+
2 rows in set (0.000 sec)

/* 5 */

MariaDB [ventas]> delete from clientes;
ERROR 1142 (42000): DELETE command denied to user 'alejo'@'localhost' for table 'clientes'

/* 6 */

grant delete on ventas.clientes to alejo@localhost;

MariaDB [ventas]> delete from clientes;
Query OK, 76 rows affected (0.009 sec)

/* 7 */

MariaDB [(none)]> revoke select, update, delete on ventas.clientes from alejo@localhost;
Query OK, 0 rows affected (0.009 sec)

MariaDB [(none)]> show grants for alejo@localhost;
+--------------------------------------------------------------------------------------------------------------+
| Grants for alejo@localhost                                                                                   |
+--------------------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `alejo`@`localhost` IDENTIFIED BY PASSWORD '*A4B6157319038724E3560894F7F932C8886EBFCF' |
+--------------------------------------------------------------------------------------------------------------+
1 row in set (0.000 sec)

/* 8 */

MariaDB [(none)]> drop user alejo@localhost;
Query OK, 0 rows affected (0.007 sec)

MariaDB [(none)]> select user from mysql.user;
+---------+
| User    |
+---------+
| root    |
| root    |
| bastian |
| pma     |
| root    |
+---------+
5 rows in set (0.001 sec)

/* 9 */