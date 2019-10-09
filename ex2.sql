create database Candidatos;

use Candidatos;

create table Curso(
	IdCurso int identity not null primary key,
	NomeCurso varchar(20) not null,
	CargaHoraria int,
	Nivel varchar(20)
);

create table Aluno(
	IdAluno int identity not null primary key,
	NomeAluno varchar(50) not null,
	Ra varchar(10),
	IdCurso int foreign key (IdCurso) references Curso(IdCurso)
);

insert into Curso (NomeCurso, CargaHoraria, Nivel)
values ('CodeXP', 600, 'Técnico');

insert into Aluno (NomeAluno, Ra, IdCurso)
values ('Larissa', 'R123', 1);

select * from Curso;