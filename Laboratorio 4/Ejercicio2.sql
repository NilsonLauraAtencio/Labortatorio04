
create database Ejercicio2;
use Ejercicio2;

create table DIM_Destino(
	Id_Destino int primary key identity,
	Pais varchar(250),
);
create table DIM_Tiempo(
	Id_Tiempo int primary key identity,
	Dia int ,
	Mes int,
	Año int,
	Fecha datetime,
);
create table DIM_Cliente(
	Id_Cliente int primary key identity,
	Direccion varchar(250) ,
	Tipo varchar(250),
);
create table DIM_Agencia(
	Id_Agencia int primary key identity,
	Operador varchar(250),
);
create table FACT_RESERVAS(
	Id_Destino int,
	Id_Tiempo int,
	Id_Cliente int,
	Id_Agencia int,
	Fecha_Reserva datetime,
	Fecha_Viaje datetime,
	DuracionReserva int,
);

alter table FACT_RESERVAS add constraint FKId_Destino foreign key (Id_Destino) references DIM_Destino(Id_Destino);
alter table FACT_RESERVAS add constraint FKId_Cliente foreign key (Id_Cliente) references DIM_Cliente(Id_Cliente);
alter table FACT_RESERVAS add constraint FKId_Agencia foreign key (Id_Agencia) references DIM_Agencia(Id_Agencia);
alter table FACT_RESERVAS add constraint FKId_Tiempo foreign key (Id_Tiempo) references DIM_Tiempo(Id_Tiempo);

alter authorization on database::Ejercicio2 to sa