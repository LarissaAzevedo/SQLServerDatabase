create database CeA;
use CeA;

create table Projeto(
	IdProjeto int identity primary key not null,
	NomeProjeto varchar(20)
);

create table Localizacao(
	IdLocal int identity primary key not null,
	Bairro varchar(20),
	Endereco varchar(100)
);

create table Empregado(
	IdEmpregado int identity primary key not null,
	NomeEmpreg varchar(50) not null,
	salario float
);

create table Dependente(
	IdDependente int identity primary key not null,
	NomeDep varchar(50) not null,
	Idade int,
	IdEmpregado int foreign key (IdEmpregado) references Empregado(IdEmpregado)
);

create table Depto(
	IdDepto int identity primary key not null,
	NomeDepto varchar(20) not null,
	IdProjetos int foreign key (IdProjetos) references Projeto(IdProjeto),
	IdEmpregado int foreign key (IdEmpregado) references Empregado(IdEmpregado),
    IdLocal int foreign key (IdLocal) references Localizacao(IdLocal)
);

insert into Projeto (NomeProjeto)
values ('C&a');
insert into Projeto (NomeProjeto)
values ('C&A');
insert into Projeto (NomeProjeto)
values ('c&a');

insert into Localizacao(Bairro, Endereco)
values ('Tatuape', 'rua nao sei');
insert into Localizacao(Bairro, Endereco)
values ('Itaquera', 'rua sei la');

insert into Empregado(NomeEmpreg, salario)
values ('nicole', 1200.00);
insert into Empregado(NomeEmpreg, salario)
values ('nayra', 1250.00);

insert into Dependente(NomeDep, Idade, IdEmpregado)
values ('valentina', 2, 2);

insert into Depto(NomeDepto, IdProjetos, IdEmpregado)
values ('Marketing', 1, 2);
insert into Depto(NomeDepto, IdProjetos, IdEmpregado)
values ('Logistica', 3, 2);
insert into Depto(NomeDepto, IdProjetos, IdEmpregado)
values ('Financeiro', 2, 1);