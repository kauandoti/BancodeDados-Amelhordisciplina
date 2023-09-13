--1ª partte
SELECT titulo FROM livros;

--2ª partte
SELECT nome FROM autores WHERE nascimento < '1900-01-01';

--3ª partte
SELECT l.titulo 
FROM livros AS l 
JOIN autores AS a ON l.autor_id = a.id 
WHERE a.nome = 'J.K. Rowling';

--4ª partte
SELECT alunos.nome 
FROM alunos 
JOIN matriculas ON alunos.id = matriculas.aluno_id 
WHERE matriculas.curso = 'Engenharia de Software';

--5ª partte
SELECT produto, SUM(receita) AS receita_total 
FROM vendas 
GROUP BY produto;

--6ª partte
SELECT a.nome AS autor, COUNT(l.id) AS total_de_livros
FROM autores AS a
LEFT JOIN livros AS l ON a.id = l.autor_id
GROUP BY a.nome;

--7ª partte
SELECT curso, COUNT(aluno_id) AS total_de_alunos
FROM matriculas
GROUP BY curso;

--8ª partte
SELECT produto, AVG(receita) AS media_de_receita
FROM vendas
GROUP BY produto;

--9ª partte
SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto
HAVING receita_total > 10000;

--10ª partte
SELECT a.nome AS autor
FROM autores AS a
JOIN livros AS l ON a.id = l.autor_id
GROUP BY a.nome
HAVING COUNT(l.id) > 2;

--11ª partte
SELECT l.titulo AS livro, a.nome AS autor
FROM livros AS l
JOIN autores AS a ON l.autor_id = a.id;

--12ª partte
SELECT alunos.nome AS aluno, matriculas.curso
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id;

--13ª partte
SELECT a.nome AS autor, COALESCE(l.titulo, 'Sem Livros aqui') AS livro
FROM autores AS a
LEFT JOIN livros AS l ON a.id = l.autor_id;

--14ª partte
SELECT alunos.nome AS aluno, COALESCE(matriculas.curso, 'Nenhum aluno registrado') AS curso
FROM matriculas
RIGHT JOIN alunos ON matriculas.aluno_id = alunos.id;

--15ª partte
SELECT alunos.nome AS aluno, matriculas.curso
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id;

--16ª partte
SELECT a.nome AS autor, COUNT(l.id) AS total_de_livros
FROM autores AS a
LEFT JOIN livros AS l ON a.id = l.autor_id
GROUP BY a.nome
ORDER BY total_de_livros DESC
LIMIT 1;

--17ª partte
SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto
ORDER BY receita_total ASC
LIMIT 1;


--19ª partte
SELECT alunos.nome AS aluno, COUNT(matriculas.id) AS total_de_matriculas
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id
GROUP BY alunos.nome;

--20ª partte
SELECT produto, COUNT(id) AS quantidade_de_transacoes
FROM vendas
GROUP BY produto
ORDER BY quantidade_de_transacoes DESC
LIMIT 1;
