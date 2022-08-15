-- Ejercicios MySQL:

-- 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
-- 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
-- 9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123.

create database peluqueria_canina;

use peluqueria_canina;

create table Dueno(
DNI int not null,
Nombre varchar (255),
Apellido varchar (255),
Telefono int,
Dirección varchar (255),
PRIMARY KEY (DNI)
);

create table Perro(
ID_Perro int not null auto_increment,
Nombre varchar (255),
Fecha_Nac date,
Sexo varchar (255),
DNI_Dueno int,
PRIMARY KEY (ID_Perro),
foreign key (DNI_Dueno) references Dueno (DNI)
);

create table Historial(
ID_Historial int not null auto_increment,
Fecha date,
Perro int,
Descripcion varchar (300),
Monto float,
PRIMARY KEY (ID_Historial),
foreign key (Perro) references Perro (ID_Perro)
);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Dirección) VALUES (28957346, 'Juan', 'Perez', 4789689, 'Belgrano 101');
select * from Dueno;
INSERT INTO Perro (ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno) VALUES (01, 'Firulais', '2018-12-03', 'Masculino', 28957346);
select * from Perro;
-- Ejercicio 9:
UPDATE Dueno SET Dirección = 'Libertad 123' WHERE DNI = 28957346;


