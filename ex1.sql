create database Compra;

use Compra;

create table Cliente(
	IdCliente int identity not null primary key,
	NomeCliente varchar(30),
	Cpf int
);

create table Produto(
	IdProduto int identity not null primary key,
	NomeProduto varchar(20),
	Marca varchar(20),
	Preco decimal
);

create table Venda(
	IdVenda int identity not null primary key,
	IdProduto int foreign key (IdProduto) references Produto(IdProduto),
	IdCliente int foreign key (IdCliente) references Cliente(IdCliente),
	Qtde int
);

insert into Cliente (NomeCliente, Cpf)
values ('larissa', 22233);

insert into Produto (NomeProduto, Marca, Preco)
values ('doritos', 'elma chips', 5.99);

insert into Venda (IdProduto, IdCliente, Qtde)
values (1,2,2);

select * from Venda;