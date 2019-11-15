create database Ejercicio3;
use Ejercicio3;

create table Cliente(
	Id_Cliente int primary key identity,
	Cliente varchar(250) unique,
	Telefono varchar(12) unique,
);

create table Responsable(
	Id_Responsable int primary key identity,
	Empresa varchar(250) ,
);
create table Localidad(
	Id_Localidad int primary key identity,
	Localidad varchar(250) ,
	Pais varchar(250),
);
create table Tiempo(
	Id_Tiempo int primary key identity,
	Dia datetime ,
	Mes datetime,
	Año datetime,
	Fecha datetime,
);

create table Proyecto(
	Id_Cliente int,
	Id_Responsable int,
	Id_Localidad int,
	Id_Tiempo int,
	Costo decimal(10,2) ,
	Fecha_Inicio Datetime ,
	Fecha_Fin Datetime,
	Duracion int,
);

alter table Proyecto add constraint FKId_Cliente foreign key (Id_Cliente) references Cliente(Id_Cliente);
alter table Proyecto add constraint FKId_Responsable foreign key (Id_Responsable) references Responsable(Id_Responsable);
alter table Proyecto add constraint FKId_Localidad foreign key (Id_Localidad) references Localidad(Id_Localidad);
alter table Proyecto add constraint FKId_Tiempo foreign key (Id_Tiempo) references Tiempo(Id_Tiempo);

alter authorization on database::Ejercicio3 to sa
