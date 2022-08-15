create database Peluqueria;

use Peluqueria;

create table Dueno
(
DNI int not null unique,
Nombre varchar (50) not null,
Apellido varchar (50) not null,
Telefono varchar (20) not null,
Direccion varchar (100) not null,
primary key (DNI)
);

create table Perro
(
ID_Perro int not null auto_increment,
Nombre varchar (50) not null,
Fecha_nac varchar (20),
Sexo varchar (25),
DNI_Dueno int not null,
primary key (ID_Perro),
constraint fk_DNI_Dueno
	foreign key (DNI_Dueno)
    references Dueno (DNI)
    on delete no action
    on update no action
);

create table Historial
(
ID_Historial int not null auto_increment,
Fecha date not null,
perro int not null,
Descripcion varchar (150) null,
primary key (ID_Historial),
constraint fk_Perro
	foreign key (perro)
    references Perro (ID_Perro)
    on delete no action
    on update no action
);


insert into Dueno values ('41848350' , 'Martin' , 'Palermo' , '497322' , 'Av. Belgrano 10');
insert into Perro values ('9' , 'Titan' , '14-08-2021' , 'Macho' , '41848350');

select * from Historial where Fecha=2022;