/* Filtrando valores nulos */

use projeto;

 /* SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL IS NULL; => assim não funciona retorna item vazio*/

select nome, sexo, endereco from cliente where email is null;

select nome, sexo, endereco from cliente where email is not null;

select nome, email from cliente;

select * from cliente where nome = 'lilian';

update cliente set email = 'lilian@gmail.com' where nome = 'lilian';

update cliente set email = 'jorge@gmail.com' where nome = 'jorge';

/* Deletando registros com a clausula delete */

delete from cliente; /* Esse comando vai deletar todos os dados da tabela */

select * from cliente where nome = 'jorge';

select count(*) from cliente where nome = 'jorge';

select count(*) from cliente;

delete from cliente where nome = 'jorge';

select count(*) from cliente;

/* exemplo de fazendo contagem pelo banco */
select 6 - 1;

select * from cliente

insert into cliente values('CARLA', 'F', 'carla@gmail.com', 234588, '34250099', 'samuel silva - centro - belo horizonte - mg');

/* Antes de excluir verificar se estamos selecionando os items corretos */
select * from cliente where nome = 'CARLA' or email = 'carla@gmail.com';

/* Aqui deletaria usuarios com o nome carla ou com o email carla@gmail.com */
delete from cliente where nome = 'CARLA' or email = 'carla@gmail.com';

/* Antes de excluir verificar se estamos selecionando os items corretos */
select * from cliente where nome = 'CARLA' and email = 'carla@gmail.com';

/* Aqui vai deletar usuarios que tem o nome carla e que tem o email igual a carla@gmail.com */
delete from cliente where nome = 'CARLA' and email = 'carla@gmail.com';

select * from cliente;