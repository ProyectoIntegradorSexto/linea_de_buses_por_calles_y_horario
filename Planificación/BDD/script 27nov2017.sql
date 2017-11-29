create database LineaBus
default character set utf8
collate utf8_unicode_ci;
use LineaBus;

create table Linea(
idLinea int not null auto_increment,
nombre varchar(255)not null,
numero varchar(255)not null,
idTipo int,
primary key (idLinea),
constraint R1 foreign key Linea(idTipo)references Tipo(idTipo));

create table Ruta(
idRuta int not null auto_increment,
descripcion varchar(255)not null,
idLinea int,
primary key (idRuta),
constraint R2 foreign key Ruta(idLinea)references Linea(idLinea));

create table CalleRuta(
idCalleRuta int not null auto_increment,
descripcion varchar(255)not null,
idCalle int,
primary key (idCalleRuta),
constraint R2 foreign key Ruta(idLinea)references Linea(idLinea));

create table Calle(
idCalle int not null auto_increment,
descripcion varchar(255)not null,
ubicacion varchar(255)not null,
primary key (idCalle),
constraint R2 foreign key Ruta(idLinea)references Linea(idLinea));

create table Tipo(
idTipo int not null auto_increment,
descripcion varchar(255)not null,
primary key (idTipo));

create table Horario(
idHorario int not null auto_increment,
hora int not null,
minuto int not null,
idLinea int,
primary key (idHorario),
constraint R3 foreign key Horario(idLinea)references Linea(idLinea));



