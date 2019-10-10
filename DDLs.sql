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


/* join */
select Nota, Materia, NomeAluno from Trabalho
join Materia
on Trabalho.IdMateria = Materia.IdMateria
join Aluno
on Trabalho.IdAluno = Aluno.IdAluno;
/* a JOIN exibe o conteúdo de todas as tabelas chamadas com chave estrangeira. É possível chamar alguns campos apenas*/

/* Deleta os dados sem alterar a estrutura da tabela*/
TRUNCATE TABLE Trabalho;
/* Se for em uma tabela que é chamada em outra tabela (se for chave estrangeira) VAI DAR MERDA*/

/* Usando o Alias (AS) para dar nome para a coluna, ou apelido*/
select count(*) as Registros from Aluno;

/* Pegando a idade máxima dos alunos*/
select max(Idade) as Idade_Maior from Aluno;

/* Pegando a idade mínima dos alunos*/
select min(Idade) as Idade_Menor from Aluno;

/* Pegando a média das idades dos alunos*/
select avg(Idade) as Media_Idade from Aluno;

/* Pegando a soma das idades dos alunos*/
select sum(Idade) as Soma_Idade from Aluno;

select count(*) as Registros, max(Idade) as Idade_Maior, min(Idade) as Idade_Menor, avg(Idade) as Media_Idade, sum(Idade) as Soma_Idade from Aluno;



/* Substring pega parte determinada de uma string*/
select SUBSTRING (NomeAluno, 0,5) as CaracterCorotado from Aluno;

/*Upper deixa as letras maiúsculas*/
select UPPER(NomeAluno) as Nome from Aluno;

/*Upper deixa as letras minúsculas*/
select lower(NomeAluno) as Nome from Aluno;