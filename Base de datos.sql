drop database if exists dbregistro;
create database DBRegistro;

create table Persona(
codigoPersona int not null auto_increment,
DPI int,
nombrePersona varchar(90) not null,
primary key (codigoPersona)
);