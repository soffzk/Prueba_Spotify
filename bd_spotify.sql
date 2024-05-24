create database prueba_spotify;
use prueba_spotify;

create table cancion (
id_can integer primary key auto_increment,
nombre_can varchar (40) not null,
artista_can varchar (60) not null,
fecha_can date,
genero_can varchar (30) not null);

describe cancion;

create table album (
id_alb integer primary key auto_increment,
nombre_alb varchar (40) not null,
cancion_alb varchar (40) not null,
can_id int not null,
fechaIngCan_alb date);

describe album;

create table usuario (
id_user integer primary key auto_increment,
nomb_user varchar (50) not null,
apellidos_user varchar (50) not null,
telefono_user varchar (30) not null,
email_user varchar (40) not null);

describe usuario;

alter table album
add constraint fk_cancion_album
foreign key (can_id) references cancion(id_can);