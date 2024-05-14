create table re_productos(
    codigo varchar(4),
    seccion varchar(30),
    nombrearticulo varchar(30),
    precio varchar(30),
    fecha varchar(30),
    importado varchar(30),
    paisdeorigen varchar(30),
    foto varchar(30),
    primary key (codigo)
    );
Query OK, 0 rows affected (0.025 sec)


create trigger productos_ai
after insert
on productos
for each row
insert into re_productos
values(NEW.CODIGOARTICULO, NEW.SECCION, NEW.NOMBREARTICULO, NEW.PRECIO, NOW(), NEW.IMPORTADO, NEW.PAISDEORIGEN, NEW.FOTO);
Query OK, 0 rows affected (0.011 sec)

insert into productos values
("GF89","DEPORTES","PELOTA","9,88","20/5/2005","FALSO","ARGENTINA", null);

create table mod_prod(
codigo varchar(4),
seccion varchar(30),
nombrearticulo varchar(30),
precio varchar(30),
fecha varchar(30),
importado varchar(30),
paisdeorigen varchar(30),
foto varchar(30),
primary key (codigo)
);
Query OK, 0 rows affected (0.024 sec)


create trigger Productos_Update 
after update on Productos for each row
update reg_Productos set CodigoArticulo = new.CodigoArticulo, Seccion = new.Seccion, NombreArticulo = new.NombreArticulo, 
            Precio = new.Precio, Importado = new.Importado, PaisdeOrigen = new.PaisdeOrigen, foto = new.foto
			
create trigger productos_BD before delete on productos for each row insert into tri_productos values (old.codigoarticulo, old.seccion, old.nombrearticulo, old.precio, now(), old.importado, old.paisdeorigen, old.foto); delete from productos where codigoarticulo = "AR26";
