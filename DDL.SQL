create database Gourmet;
use Gourmet;

CREATE TABLE gourmetdelight_menus(
id_menus int primary key auto_increment,
nombre varchar(100),
descripcion text,
precio decimal(10,2)
);

CREATE TABLE gourmetdelight_clientes(
id_clientes int primary key auto_increment,
nombre varchar(100),
correo_electronico varchar(100),
telefono varchar(15),
fecha_registro date
);

CREATE TABLE gourmetdelight_pedidos(
id_pedidos int primary key auto_increment,
id_clientes int, 
fecha date,
total decimal(10,2),
FOREIGN KEY (id_clientes) REFERENCES gourmetdelight_clientes(id_clientes)
);



CREATE TABLE gourmetdelight_detallespedidos(
id_pedidos int,
id_menus int, 
cantidad int, 
precio_unitario decimal(10,2),
FOREIGN KEY (id_pedidos) REFERENCES gourmetdelight_pedidos(id_pedidos),
FOREIGN KEY (id_menus) REFERENCES gourmetdelight_menus(id_menus)
);



