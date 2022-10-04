--Crear base de datos
create database DBRegistros
go

use DBRegistros
go
--Crear tabla
create table Categoria(
	codigoCat int primary key identity (1,1)
	, nombreCat nvarchar(60) not null
	, activoCat bit  default 'true')
	go

create table Producto(
codigoProd int primary key identity (1,1)
,nombreProd nvarchar(60) not null
, precioProd numeric (18,2) not null
,categoriaProd int foreign key references Categoria(codigoCat)
, activoProd bit default 1)

select *from Categoria
insert into Categoria (nombreCat)values('Electrònicos')
,('Embutitdos')
,('Bebidas +18')

delete from Categoria where codigoCat >=6
delete from Categoria where codigoCat = 2




