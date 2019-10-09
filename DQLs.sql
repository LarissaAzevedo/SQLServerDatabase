-- Consultas no banco

/* Exibe os dados da tabela Aluno*/
select * from Aluno;

/* Exibindo os dados da tabela Materia*/
select * from Materia;

/* Alterando dados*/
/* Altera o nome e a idade do aluno com id=1 */
update Aluno SET 
    NomeAluno = 'Larissa Santos', 
	Idade = 21
WHERE IdAluno = 1;

/* IMPORTANTE */
/* Delete ou Update, sempre com where */

/* Exclui um campo da tabela onde o Id seja 2 */
DELETE FROM materia
WHERE IdMateria = 2;

/* Mostrar dados em uma "busca" com LIKE */
select * from Aluno Where NomeAluno LIKE '%Santos%';

/* Ordena a lista por ordem alfabética, o ASC é de ascendente, não é preciso especificar para ordenar*/
select * from Aluno order by NomeAluno asc;

/* Ordena a lista por ordem decrescente*/
select * from Aluno order by NomeAluno desc;


