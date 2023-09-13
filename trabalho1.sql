--1ª partte
SELECT titulo FROM livros;

/*2ª partte*/
SELECT nome FROM autores WHERE nascimento < '1900-01-01';

/*3ª partte*/
SELECT l.titulo 
FROM livros AS l 
JOIN autores AS a ON l.autor_id = a.id 
WHERE a.nome = 'J.K. Rowling';

/*4ª partte*/
SELECT alunos.nome 
FROM alunos 
JOIN matriculas ON alunos.id = matriculas.aluno_id 
WHERE matriculas.curso = 'Engenharia de Software';

/*5ª partte*/
SELECT produto, SUM(receita) AS receita_total 
FROM vendas 
GROUP BY produto;

/*6ª partte*/
SELECT a.nome AS autor, COUNT(l.id) AS total_de_livros
FROM autores AS a
LEFT JOIN livros AS l ON a.id = l.autor_id
GROUP BY a.nome;

/*7ª partte*/
SELECT curso, COUNT(aluno_id) AS total_de_alunos
FROM matriculas
GROUP BY curso;
