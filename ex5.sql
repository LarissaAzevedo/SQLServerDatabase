create database Livraria;

use Livraria;

create table Autor(
	IdAutor int identity not null primary key,
	NomeAutor varchar(50) not null,
);

create table Livro(
	IdLivro int identity not null primary key,
	NomeLivro varchar(30) not null,
	IdAutor int foreign key (IdAutor) references Autor(IdAutor)
);

insert into Autor(NomeAutor)
values ('J.K.Rowling');
insert into Autor(NomeAutor)
values ('felix');
insert into Autor(NomeAutor)
values ('não sei');
insert into Autor(NomeAutor)
values ('jose');

insert into Livro(NomeLivro, IdAutor)
values ('R potter', 1);
insert into Livro(NomeLivro, IdAutor)
values ('livro do felix', 2);
insert into Livro(NomeLivro, IdAutor)
values ('historia de vida do jose', 4);
insert into Livro(NomeLivro, IdAutor)
values ('autor desconhecido', 3);

select * from Livro;
select * from Autor;
