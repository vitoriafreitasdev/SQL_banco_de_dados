### tipagem\_tabelas\_banco\_de\_dados

##### 

* ###### char/varchar (caracteres)
* ###### float/int (números)
* ###### blob(img, word...)
* ###### text(texto extenso)

###### 

###### **varchar => é dinâmico, o tipo varia conforme o dado.**

###### **Por exemplo:**

###### ***varchar(10)***, se entrarmos com o nome **joão**, vai **ocupar 4 bytes**(1 byte por caractere), se fosse ***char(10)*** o nome **joão ocuparia 10 bytes**.

###### 

###### ***O char não gasta tempo variando.***

###### **Então use o char => quando o número de caracteres da coluna nunca for variante.**

###### 

###### 

###### **Mais Tipos de Dados**

###### 

* ###### **enum = Enumeração (Só no mySql)**

###### 

###### Conjunto fixo de dados, usamos quando queremos limitar os dados em uma coluna.

###### 

* ###### **GroupBy** - Agrupa os registros por condição
* ###### **count(\*)** - conta o número de registros

###### 

###### Tipos numéricos

###### 

* ###### Float - números reais

###### 

###### 1345,8989 - maior precisão

###### 

###### 134589,89 - menor precisão

###### 

###### **float(10, 2)** => 10 casas no total, onde 2 casas serão depois da virgula

###### 

###### 

* ###### int => números inteiros (Máximo 11 digitos)

###### 

###### 10, 20, 500...

###### 

###### **Números** que **não necessitam de cálculos** podem ser **tipados** como **varchar**, como cpf, rg etc.

###### 





### A cláusula WHERE



#### Introdução à Cláusula WHERE no SQL



###### A cláusula WHERE é uma parte essencial da linguagem SQL (Structured Query Language), que é amplamente utilizada para gerenciar e manipular dados em bancos de dados relacionais. Ela permite filtrar registros e selecionar apenas aqueles que atendem a certas condições. Vamos explorar essa cláusula de maneira simples e clara.

##### 

#### O que é a Cláusula WHERE?



###### A cláusula WHERE é usada em uma instrução SQL para especificar condições que devem ser atendidas pelos registros que você deseja selecionar, atualizar ou excluir. Pense nela como um filtro que ajuda a encontrar exatamente os dados que você está procurando dentro de uma tabela.

##### 

#### Estrutura Básica



###### A estrutura básica de uma consulta SQL usando a cláusula WHERE é a seguinte:

###### 

###### sql

###### SELECT coluna1, coluna2, ...

###### FROM nome\_da\_tabela

###### WHERE condição;

###### Componentes:

###### SELECT: Especifica as colunas que você deseja ver nos resultados.

###### 

###### FROM: Indica a tabela onde os dados estão armazenados.

###### 

###### WHERE: Define a condição que os registros devem satisfazer para serem incluídos nos resultados.

###### 

###### Exemplos Práticos

###### 1\. Selecionar Registros Específicos

###### Imagine que você tem uma tabela chamada Clientes com as colunas Nome e Idade. Se quisermos encontrar todos os clientes com mais de 30 anos, usaríamos:

###### 

###### sql

###### SELECT Nome, Idade

###### FROM Clientes

###### WHERE Idade > 30;

###### 2\. Combinações de Condições

###### Você pode usar operadores lógicos como AND e OR para combinar múltiplas condições. Por exemplo, para encontrar clientes que têm mais de 30 anos e moram na cidade de "São Paulo":

###### 

###### sql

###### SELECT Nome, Idade, Cidade

###### FROM Clientes

###### WHERE Idade > 30 AND Cidade = 'São Paulo';

###### 3\. Filtragem com Operadores de Comparação

###### A cláusula WHERE suporta diversos operadores de comparação para definir condições:

###### 

###### = : Igual a

###### 

###### <> ou != : Diferente de

###### 

###### > : Maior que

###### 

###### < : Menor que

###### 

###### >= : Maior ou igual a

###### 

###### <= : Menor ou igual a

###### 

###### 4\. Uso de LIKE para Correspondência de Padrões

###### Para buscar padrões em texto, o operador LIKE é muito útil. Por exemplo, para encontrar todos os clientes cujos nomes começam com "Jo":

###### 

###### sql

###### SELECT Nome

###### FROM Clientes

###### WHERE Nome LIKE 'Jo%';

###### O símbolo % é um caractere curinga que representa qualquer sequência de caracteres.

###### 

#### Conclusão



###### A cláusula WHERE é uma ferramenta poderosa no SQL que permite realizar consultas eficientes e precisas. Com ela, você pode filtrar dados de acordo com suas necessidades, tornando a manipulação de grandes volumes de informação mais gerenciável e direcionada.

###### 

###### Ao aprender a usar a cláusula WHERE, você estará um passo mais próximo de dominar a manipulação de dados em SQL. Continue explorando e praticando com diferentes condições e operadores para se familiarizar ainda mais com suas capacidades.

###### 

###### Se tiver mais dúvidas ou quiser aprofundar seu conhecimento, estou aqui para ajudar!



### Mais sobre o UPDATE



#### Introdução à Instrução UPDATE no SQL

##### 

###### A instrução UPDATE é uma das ferramentas básicas do SQL (Structured Query Language) e é usada para modificar dados existentes em uma tabela de banco de dados. Com ela, você pode alterar valores em uma ou mais linhas, conforme necessário. Vamos entender como funciona essa instrução de forma prática e acessível.

###### 

#### O que é a Instrução UPDATE?

###### A instrução UPDATE permite alterar dados já existentes em uma tabela. É como editar informações em um documento: você pode corrigir erros, atualizar valores ou fazer ajustes conforme necessário.

###### 

#### Estrutura Básica

###### A estrutura básica de uma instrução UPDATE é a seguinte:

###### 

###### sql

###### UPDATE nome\_da\_tabela

###### SET coluna1 = valor1, coluna2 = valor2, ...

###### WHERE condição;

###### Componentes:

###### UPDATE: Indica a tabela que contém os dados a serem modificados.

###### 

###### SET: Especifica as colunas e os novos valores que você deseja definir.

###### 

###### WHERE: (Opcional, mas recomendado) Define as condições que determinam quais registros serão atualizados. Sem uma cláusula WHERE, todas as linhas da tabela serão atualizadas.

###### 

###### Exemplos Práticos

###### 1\. Atualizar um Único Registro

###### Imagine que você tem uma tabela chamada Funcionarios com as colunas Nome, Cargo e Salario. Se quisermos aumentar o salário de um funcionário específico, podemos usar:

###### 

###### sql

###### UPDATE Funcionarios

###### SET Salario = 5500

###### WHERE Nome = 'Maria Silva';

###### 2\. Atualizar Vários Registros

###### Você pode atualizar múltiplos registros que atendam a uma certa condição. Por exemplo, se quisermos aumentar o salário de todos os funcionários que são "Analistas":

###### 

###### sql

###### UPDATE Funcionarios

###### SET Salario = Salario \* 1.10

###### WHERE Cargo = 'Analista';

###### 3\. Atualizar Sem Cláusula WHERE (Com Cuidado)

###### Se não for usada uma cláusula WHERE, todos os registros da tabela serão atualizados. Por exemplo:

###### 

###### sql

###### UPDATE Funcionarios

###### SET Cargo = 'Funcionário';

###### Importante: Usar UPDATE sem WHERE pode causar alterações em massa indesejadas, então deve ser feito com extremo cuidado.

###### 

###### Considerações de Segurança

###### Backup de Dados: Antes de executar atualizações grandes, é sempre uma boa prática fazer backup dos dados para evitar perdas acidentais.

###### 

###### Testar Antes: Teste suas consultas em um ambiente controlado ou utilizando transações para garantir que o resultado seja o esperado.

#### 

#### Conclusão



###### A instrução UPDATE é essencial para manter os dados de um banco de dados precisos e atualizados. Entender como utilizá-la corretamente é fundamental para a gestão eficaz de dados. Com prática, você ficará mais confiante em sua capacidade de modificar dados de maneira segura e eficiente.

