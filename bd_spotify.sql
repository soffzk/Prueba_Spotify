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

insert into cancion
(id_can, nombre_can, artista_can, fecha_can, genero_can) values
(1, 'Heathens', 'Twenty One Pilots', '2016-06-16', 'Rap Rock'),
(2, 'Smells Like Teen Spirit', 'Nirvana', '2015-05-07', 'Rock-Alternativo'),
(3, 'Bohemian Rhapsody', 'Queen', '1975-10-31', 'Opera Rock'),
(4, 'Rosas', 'La Oreja de Van Gogh', '2003-09-26', 'Pop'),
(5, 'Yellow', 'Coldplay', '2000-06-26', 'Rock Alternativo'),
(6, 'Rosa Pastel', 'Belanova', '2005-11-30', 'Dance Rock'),
(7, 'Billie Jean', 'Michael Jackson', '1982-11-01', 'Pop'),
(8, 'Fuiste tu', 'Ricardo Arjona', '2012-02-07', 'Pop Latino');

insert into album
(id_alb, nombre_alb, can_id, fechaIngCan_alb) values
(01, 'Suicide Squad', '1', '2016-09-30'),
(02, 'Nevermind', '2', '2015-08-17'),
(03, 'A Night at the Opera', '3', '1976-03-14'),
(04, 'Lo que te conté mientras te hacías la dormida', '4', '2003-12-19'),
(05, 'Parachutes', '5', '2001-04-20'),
(06, 'Dulce Beat', '6', '2007-05-31'),
(07, 'Thriller', '7', '1995-01-10'),
(08, 'Independiente', '8', '2015-12-03');