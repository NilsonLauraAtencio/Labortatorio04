
create database Ejercicio1;
use Ejercicio1;

create table DIM_Destino(
	Id_Destino int primary key identity,
	Pais varchar(250),
	Tarifa_Exportacion int ,
);
create table DIM_Tiempo(
	Id_Tiempo int primary key identity,
	Año int ,
	Mes varchar(50),
	Bimestre datetime,
	Trimestre datetime,
	Semestre datetime,
);
create table DIM_Centro_Costo(
	Id_Centro_Costo int primary key identity,
	Responsable varchar(250) ,
	Grupo varchar(250),
);
create table DIM_Modo_Transporte(
	Id_Modo_Transporte int primary key identity,
	Nombre varchar(250),
);
create table DIM_Lote(
	Id_Lote int primary key identity,
	Tarifa_Exportacion int ,
	Grupo varchar(250),
);
create table FACT_COSTOS(
	Id_Destino int,
	Id_Centro_Costo int,
	Id_Modo_Transporte int,
	Id_Tiempo int,
	Id_Lote int,
	Costo decimal(10,2),
);

alter table FACT_COSTOS add constraint FKId_Destino foreign key (Id_Destino) references Destino(Id_Destino);
alter table FACT_COSTOS add constraint FKId_Centro_Costo foreign key (Id_Centro_Costo) references Centro_Costo(Id_Centro_Costo);
alter table FACT_COSTOS add constraint FKId_Modo_Transporte foreign key (Id_Modo_Transporte) references Modo_Transporte(Id_Modo_Transporte);
alter table FACT_COSTOS add constraint FKId_Tiempo foreign key (Id_Tiempo) references Tiempo(Id_Tiempo);
alter table FACT_COSTOS add constraint FKId_Lote foreign key (Id_Lote) references Lote(Id_Lote);
