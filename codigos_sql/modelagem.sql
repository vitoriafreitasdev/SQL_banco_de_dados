/* modelagem sql */

use projeto;

/* Com modelagem errada o telefone vai ser sobrescarregado, assim o cliente nao podendo ter mais de um telefone no banco */
update cliente set telefone = '97865434' where nome = 'joao';

select * from cliente;

select sexo, count(*) from cliente group by sexo;

select endereco, count(*) from cliente group by endereco;

/* Primeira forma normal */

/*

1 - todo campo vetorizado se tornara outra tabela

(amarelo, azul, laranja, verde) -> cores
(ka, fiesta, uno, civic) -> carros

2 - todo campo multivalorado se tornara a outra tabela. Quando o campo for divisivel 

3 - toda tabela necessita de pelo menos um campo que idenfique todo o registro como sendo unico. 
Isso é o que chamamos de chave primaria ou primary key.


 */


/* CRIAÇÃO DE NOVO BANCO DE DADOS */

/* DELETAR TABELA */

DROP TABLE CLIENTE;

/* ESVAZIAR TABELA */

TRUNCATE TABLE CLIENTE;

DELETE FROM CLIENTE;



create database comercio;

use comercio;

/* Para saber os bancos criados */

show databases;

/* Criando as tabelas */

/* Tabela cliente */

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT, 
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M', 'F') NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	CPF VARCHAR(50) UNIQUE
);

/* Tabela endereço */

CREATE TABLE ENDERECO(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,  
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/* Tabela telefone */

CREATE TABLE TELEFONE (
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,  
	TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);


/* endereco - obrigatorio
cadastro de somente um.

telefone - não obrigatorio
cadastro de mais de um (Opcional) */

/* 
Chave estrangeira -> é a chave primaria de uma tabela que vai até a outra tabela para fazer referencia entre registros 
relacionamento 1x1 -> a chave estrangeira fica na tabela mais fraca, a tabela mais fraca é definida pela regra de negocio 
- Nesse caso, a tabela mais forte seria a do cliente, por conta desse negocio
relacionamento 1xN -> a chave estrangeira ficara sempre na cardinalidade n
*/


/* INSERÇÃO DE DADOS */

INSERT INTO CLIENTE VALUES(NULL, 'JOAO', 'M', 'JOAO@IG.COM', '12334523456');
INSERT INTO CLIENTE VALUES(NULL, 'CARLOS', 'M', 'CARLOS@OUL.COM', '44534271236');
INSERT INTO CLIENTE VALUES(NULL, 'ANA', 'F', 'ANA@GMAIL.COM', '55543245634');
INSERT INTO CLIENTE VALUES(NULL, 'CLARA', 'F', NULL, '78609387209');
INSERT INTO CLIENTE VALUES(NULL, 'JORGE', 'M', 'JORGE@IG.COM', '34576249987');
INSERT INTO CLIENTE VALUES(NULL, 'CELIA', 'F', 'CELIA@OUL.COM', '23476598563');

SELECT * FROM CLIENTE;

INSERT INTO ENDERECO VALUES(NULL, 'RUA ANTONIO SA', 'CENTRO', 'B.HORIZONTE', 'MG', 4);

INSERT INTO ENDERECO VALUES(NULL, 'RUA CAPITAO HERMES', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 1);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PRES VARGAS', 'JARDINS', 'SÃO PAULO', 'SP', 3);
INSERT INTO ENDERECO VALUES(NULL, 'RUA ALFANDEGA', 'ESTACIO', 'RIO DE JANEIRO', 'RJ', 2);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DO OUVIDOR', 'FLAMENGO', 'RIO DE JANEIRO', 'RJ', 6);
INSERT INTO ENDERECO VALUES(NULL, 'RUA URUGUAIANA', 'CENTRO', 'VITORIA', 'ES', 5);

DESC TELEFONE;

INSERT INTO TELEFONE VALUES(NULL, 'CEL', '78458743', 5);

INSERT INTO TELEFONE VALUES(NULL, 'RES', '23456776', 5);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '45224578', 1);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '56432299', 2);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '43567853', 1);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '45235789', 3);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '34256835', 3);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '45789246', 1);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '42567489', 5);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '09652892', 2);