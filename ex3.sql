create database Escola;

use Escola;

create table Turma(
	IdTurma int identity not null primary key,
	Professor varchar(20),
	Semestre int
);

create table Aluno(
	IdAluno int identity not null primary key,
	NomeAluno varchar(50) not null,
	Ra varchar(10),
	IdTurma int foreign key (IdTurma) references Turma(IdTurma)
);

insert into Turma(Professor, Semestre)
values ('Carlo', 2);
insert into Turma(Professor, Semestre)
values ('Paula', 3);

insert into Aluno(NomeAluno, Ra, IdTurma)
values ('Pedro', 'R333',1);

select * from Turma;