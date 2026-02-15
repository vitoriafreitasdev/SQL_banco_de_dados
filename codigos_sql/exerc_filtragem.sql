/* 
Exercicio 
1 - trazer todos os dados.
2 - trazer o nome do livro e o nome da editora 
3 - trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino 
4 - trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino 
5 - trazer os valores dos livros das editoras de são paulo 
6 - trazer os dados dos autores do sexo masculino que tiveram livros publicados por são paulo ou rio de janeiro (Questão desafio)
*/

/* comandos para mostrar os database salvos no banco */

SHOW DATABASES;

/* mostrar status atual, banco atual conectado etc */

STATUS; /* funciona sem ; tambem */

/*Comando para esvaziar tabela */

TRUNCATE TABLE LIVROS;

/* Excluir */

DROP TABLE LIVROS;

/* Criando database */

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

/* Criando tabela livros */

CREATE TABLE LIVROS (
	NOME_LIVRO VARCHAR(100),
	NOME_AUTOR VARCHAR(100),
	SEXO_AUTOR CHAR(1),
	NUMERO_PAGINAS INT(5),
	NOME_EDITORA VARCHAR(30),
	VALOR_LIVRO FLOAT(10, 2),
	UF_EDITORA CHAR(2),
	ANO_PUBLICACAO INT(4)
);


/* Colocando dados na tabela */ 

INSERT INTO LIVROS(NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) 
VALUES('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009), ('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', 2018),
('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008), ('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018), 
('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019), ('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016),
('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015), ('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011),
('Copas Inesqueciveis', 'Marco Alcantra', 'M', 200, 'Larson', 130.98, 'RS', 2018), ('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', 2017);

/* Verificando dados | 1 - trazer todos os dados. */

SELECT * FROM LIVROS;

/*  trazer o nome do livro e o nome da editora */ 

SELECT NOME_LIVRO, NOME_EDITORA FROM LIVROS;

/* trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino  */

SELECT NOME_LIVRO, UF_EDITORA FROM LIVROS WHERE SEXO_AUTOR = 'M';

/* trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino  */

SELECT NOME_LIVRO, NUMERO_PAGINAS FROM LIVROS WHERE SEXO_AUTOR = 'F';

/* trazer os valores dos livros das editoras de são paulo  */

SELECT VALOR_LIVRO FROM LIVROS WHERE UF_EDITORA = 'SP';

/* trazer os dados dos autores do sexo masculino que tiveram livros publicados por são paulo ou rio de janeiro (Questão desafio) */

SELECT NOME_AUTOR, SEXO_AUTOR FROM LIVROS WHERE SEXO_AUTOR = 'M' AND (UF_EDITORA = 'SP' OR UF_EDITORA = 'RJ'); 


