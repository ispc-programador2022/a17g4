#Ejercicio 1
Create database Perrera;
use Perrera;
create table Dueno(
DNI int,
Nombre varchar(20),
Apellido varchar(20),
Telefono Bigint,
Direccion varchar(50),
primary key (DNI)
);

create table Perro(
ID_Perro int,
Nombre varchar(20),
Fecha_nac date,
Sexo varchar(10),
DNI_dueno int,
primary key (ID_Perro),
foreign key (DNI_dueno) references Dueno(DNI)
);

create table Historial(
ID_Historial int AUTO_INCREMENT,
Fecha date,
Perro int,
Descripcion varchar(50),
Monto int,
primary key (ID_Historial),
foreign key (Perro) references Perro(ID_Perro)
); 

#Ejercicio 2

insert into Dueno values (42159315, 'Agustin', 'Reyna', 3516234567, 'Rojo 2729');
insert into Perro values (10, 'Tiny', '2019-08-09', 'Femenino', 42159315);

#Ejercicio 8
#8 Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.

insert into Historial values (1,'2022-08-13', 10, 'Corte de pelo caniche Toy', 1000);

