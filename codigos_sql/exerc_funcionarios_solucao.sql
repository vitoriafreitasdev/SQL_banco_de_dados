

/* Quantidade de registro na tabela */

SELECT COUNT(*) FROM FUNCIONARIOS;

/* 1 - Traga Os funcionarios que trabalham no departamento de filmes ou no departamento de roupas */

/* Primeiro contar quantidade de departemento de filmes 21  e o 53 no de roupas */

SELECT DEPARTAMENTO, COUNT(*) AS DEPARTAMENTO FROM FUNCIONARIOS GROUP BY DEPARTAMENTO;

/* Fazendo a projeção e selecionando */

SELECT * FROM FUNCIONARIOS WHERE DEPARTAMENTO = 'Roupas' OR DEPARTAMENTO = 'Filmes'; 

/* O gestor de markenting pediu a lista das funcionarias que trabalham no departamento de filmes ou no departamento lar. ele necessita enviar um email para os colaboradoras desses desses dois setores  */
/* (departamento = lar (52) ou departamento = filmes (21)) and sexo = Feminino */

SELECT * FROM FUNCIONARIOS WHERE (DEPARTAMENTO = 'Lar' OR DEPARTAMENTO = 'Filmes') AND SEXO = 'Feminino';

/*Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem no Jardim */
/* vendo a quantidade de funcionarias homens */

SELECT SEXO, COUNT(*) FROM FUNCIONARIOS GROUP BY SEXO;

/* Fazendo a projeção e selecionando */

SELECT * FROM FUNCIONARIOS WHERE SEXO = 'Masculino' OR DEPARTAMENTO = 'Jardim';

/* SOLUÇÕES DO PROFESSOR QUE SÃO UM POUCO DIFERENTES */

SELECT COUNT(*), DEPARTAMENTO FROM FUNCIONARIOS GROUP BY DEPARTAMENTO ORDER BY 1;

SELECT COUNT(*), SEXO FROM FUNCIONARIOS GROUP BY SEXO;

SELECT * FROM FUNCIONARIOS WHERE (DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino')
or (DEPARTAMENTO = 'Filmes' AND SEXO = 'Feminino');

