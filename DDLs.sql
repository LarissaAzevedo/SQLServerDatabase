create database Boletim;

/* Definindo que  as alterações serão feitas no banco de dados Boletim, se não, ele usa o banco master*/
use Boletim;

/* Criando a tabela Aluno*/
create table Aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	NomeAluno VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);

/* Criando a tabela Materia*/
create table Materia(
    IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
    Materia VARCHAR(50)
);

/* criando a tabela Trabalho com chaves estrangeiras */
create table Trabalho(
    IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
    Nota DECIMAL,
    -- Chaves estrangeiras
    IdMateria INT FOREIGN KEY (IdMateria) REFERENCES Materia(IdMateria),
    IdAluno INT FOREIGN KEY (IdAluno) REFERENCES Aluno(IdAluno)
);

/* Alterando uma tabela */
alter table Materia
ADD Teste VARCHAR(2);

/* Excluir coluna */
alter table Materia
drop column Teste;

/*Inserindo dado na tabela Aluno*/
INSERT INTO Aluno (NomeAluno, Ra, Idade) VALUES ('Larissa', 'R123', 20);

/*Inserindo dado na tabela Materia*/
INSERT INTO Materia (Materia) VALUES ('Banco de dados');

