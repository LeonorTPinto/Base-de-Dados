-------FICHA6

USE Biblioteca
GO

----a

SELECT * 
FROM Aluno

---- ou
--------SELECT Numero_mecanogarfico , nome
--------FROM Aluno

----b--.- Mostrar um nime
SELECT Numero_mecanografico, Nome
FROM Aluno
WHERE Nome LIKE 'João%'

----C---
SELECT Numero_mecanografico, Nome, Garantia
FROM Aluno
WHERE Garantia >= 10

---
SELECT*
FROM Livro
----ou 
SELECT Titulo,  Autor, Editor,Estado
FROM Livro

---EXTRA
SELECT *
FROM Emprestimo

----D----
SELECT Autor, Titulo
FROM Livro
WHERE Autor LIKE 'Manuel António'



----- Qual o estado dos livros que contêm "Bases de Dados" no título?

SELECT Autor, Titulo, Estado
FROM Livro
WHERE Titulo LIKE '%Bases de Dados%'


---- Qual o valor em caixa da biblioteca fruto das garantias dos alunos?


SELECT SUM(Garantia) AS valor_em_caixa
FROM Aluno
