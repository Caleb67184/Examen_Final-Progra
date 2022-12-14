
create database Vehiculos

use Vehiculos

create table Usuarios
(
	IdUsuario int identity (1,1) primary key,
	Usuario varchar (50) unique,
	Clave varchar (30),
	Nombre varchar (50),
	Apellido varchar (50)
)

create table Placa
(
	IdPlaca int identity (1,1) primary key,
	NumPlaca varchar (6) unique,
	IdUsuario int,
	constraint FK_IdUsuario foreign key (IdUsuario) references Usuarios (IdUsuario),
	Monto money default (0)
)
-------------------------------------------------------------------------------------
create procedure ValidarUsuario
@Usuario varchar (30),
@Clave varchar (30)
as
begin
	select * from Usuarios where Usuario =@Usuario and Clave=@Clave
end
------------------------------------------------------------------------------------
--Tabla Usuarios
create procedure IngresarUsuario
@nombre_Usuario varchar (50),
@usuario varchar (50),
@clave varchar (30),
@apellido varchar (30)
as
begin
	insert into Usuarios(nombre, usuario, clave, apellido) values (@nombre_Usuario, @usuario, @clave, @apellido)
end

exec IngresarUsuario Caleb, Caleb67184, 111, Silman

create procedure BorrarUsuario
@IdUsuario int
as
begin
	delete Usuarios where IdUsuario = @IdUsuario
end

create procedure ModificarUsuario
@nombre_Usuario varchar (50),
@clave varchar (30),
@apellido varchar (30),
@IdUsuario int
as
begin
	update Usuarios set nombre = @nombre_Usuario, Clave = @clave, Apellido = @apellido where IdUsuario = @IdUsuario
end

---------------------------------------------------------------------------------------------------------
--Tabla Placas
create procedure IngresarPlacas
@NumPlaca varchar (6),
@monto money
as
begin
	insert into Placa (NumPlaca, monto) values (@NumPlaca, @monto)
end

create procedure BorrarPlacas
@IdPlaca int
as
begin
	delete Placa where IdPlaca = @IdPlaca
end

create procedure ModificarPlacas
@NumPlaca varchar (6),
@monto money,
@IdPlaca int
as
begin
	update Placa set NumPlaca = @NumPlaca, Monto = @monto where IdPlaca = @IdPlaca
end

create procedure ReportePlaca
@NumPlaca varchar (6),
as
begin
	select * from Placa 
end

create procedure reporte
@NumPlaca varchar (6)
as
begin
	select Monto, NumPlaca, Monto*0.13 as IVA, Monto*1.13 as Total from Placa where NumPlaca = @NumPlaca
end