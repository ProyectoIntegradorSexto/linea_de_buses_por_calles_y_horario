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
idRuta int,
idCalle int,
primary key (idCalleRuta),
constraint R3 foreign key CalleRuta(idRuta)references Ruta(idRuta),
constraint R4 foreign key CalleRuta(idCalle)references Calle(idCalle));

create table Calle(
idCalle int not null auto_increment,
descripcion varchar(255)not null,
ubicacion varchar(255)not null,
primary key (idCalle));

create table Tipo(
idTipo int not null auto_increment,
descripcion varchar(255)not null,
primary key (idTipo));

create table Frecuencia(
idFrecuencia int not null auto_increment,
hora varchar(100)not null,
intervalo varchar(100)not null,
idLinea int,
primary key (idFrecuencia));

create table Dia(
idDia int not null auto_increment,
idFrecuencia int,
idLinea int,
descripcion varchar(100) not null,
primary key (idDia),
constraint R5 foreign key Dia(idFrecuencia)references Frecuencia(idFrecuencia),
constraint R6 foreign key Dia(idLinea)references Linea(idLinea));



