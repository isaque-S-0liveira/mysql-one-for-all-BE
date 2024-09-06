# My Awesome Project
    
## Contexto

No projeto One For All - SpotifyClone, o principal objetivo foi consolidar os conhecimentos de banco de dados relacional através da normalização e criação de consultas SQL avançadas. O desafio simula um banco de dados similar ao do Spotify, no qual foi necessário lidar com dados brutos e não estruturados, aplicando técnicas de modelagem para estruturar o banco de dados de forma eficiente.

<details>
  <summary>🎲 Planilha SpotifyClone</summary>
  <div style="display:flex; justify-content:center;  align-items:center; width="100%">
  <img src="Preview/non-normalized-tables.png" alt="page1" width="100%" height="500"/>
  </div>
</details>

<details>
  <summary>O projeto foi dividido em duas partes:</summary>
  
  ## Parte 1: Normalização de Dados

Recebi uma planilha contendo informações de um banco de dados do SpotifyClone que estavam desnormalizadas e com redundâncias. O primeiro passo foi aplicar princípios de normalização para organizar os dados em diferentes tabelas, garantindo que as informações fossem armazenadas de maneira eficiente, sem duplicações e com integridade referencial. Esta etapa incluiu:

- Divisão de dados em tabelas relacionais.
  
- Definição de chaves primárias e chaves estrangeiras para criar relacionamentos entre tabelas.
  
- Garantia de que cada tabela estava no formato 3FN (Terceira Forma Normal), eliminando redundâncias e dependências parciais.
  
## Parte 2: Criação e Manipulação do Banco de Dados

Após a normalização, o próximo passo foi criar as tabelas no banco de dados SpotifyClone e populá-las com os dados fornecidos. Uma vez que o banco de dados foi estruturado, o foco se voltou para a criação de queries SQL avançadas que atendiam aos requisitos de consulta, agregação de dados e relatórios.

</details>

## Habilidades Desenvolvidas:

- `Normalização`: Aplicação das formas normais para organizar dados e eliminar redundâncias, garantindo uma modelagem correta do banco de dados relacional.
  
- `Criação e População de Tabelas`: Uso de DDL (Data Definition Language) para criar tabelas e DML (Data Manipulation Language) para inserir dados normalizados.
  
- `Consultas SQL Complexas`: Desenvolvimento de consultas avançadas utilizando joins, subqueries, e funções agregadas para obter insights detalhados do banco de dados.
  
- `Agregação de Dados`: Aplicação de funções como COUNT(), SUM(), MAX(), MIN() e AVG() para realizar cálculos e análises agregadas sobre os dados do SpotifyClone.
  
- `Alias e Ordenação`: Uso de alias para renomear colunas e ordenação de resultados com ORDER BY, criando relatórios claros e precisos.
  
- `Filtragem Condicional`: Implementação de filtros com WHERE e HAVING para refinar resultados com base em condições específicas, como datas, faixas etárias e rankings.
  
## Exemplos de Desafios Resolvidos:

1. Normalização e Criação de Tabelas: A partir de uma planilha desnormalizada, os dados foram normalizados e organizados em tabelas com integridade referencial, criando um banco de dados eficiente.

2. Contagem de Canções, Artistas e Álbuns: Uma query foi desenvolvida para contar o número total de canções, artistas e álbuns, utilizando subqueries e joins entre as tabelas normalizadas.

3. Análise de Usuários e Históricos de Reprodução: Criação de uma consulta para exibir o número de músicas ouvidas e a soma dos minutos ouvidos por cada usuário, agrupando e ordenando os resultados.

4. Usuários Ativos desde 2021: Uma query foi criada para identificar usuários que permaneceram ativos após 2021, com base no histórico de reprodução mais recente.

5. Músicas Mais Tocadas: Um estudo das duas músicas mais tocadas no momento foi realizado, utilizando funções agregadas para contar as reproduções e ordenando os resultados de forma decrescente.

6. Relatórios de Faturamento: Para calcular o faturamento da empresa com base nos planos dos usuários, foi criada uma consulta que exibe o menor, maior, médio e total faturamento, com valores monetários formatados com duas casas decimais.

7. Relação de Álbuns e Seguidores: Uma consulta foi desenvolvida para exibir os álbuns produzidos por cada artista, ordenados pela quantidade de seguidores de forma decrescente.

8. Músicas Favoritadas: Após normalizar uma planilha de canções favoritas, uma query foi criada para exibir o top 3 de álbuns cujas músicas foram mais favoritadas, e um ranking de artistas baseado na quantidade de favoritadas que suas músicas receberam.

## Desafios Técnicos Enfrentados:

- `Normalização Avançada`: A maior dificuldade foi garantir que os dados estavam normalizados corretamente, eliminando redundâncias e organizando informações de forma eficiente.

- `Agregação e Filtragem de Dados`: Utilização de GROUP BY e HAVING para realizar cálculos avançados e gerar relatórios a partir de grandes volumes de dados.

- `Consultas Otimizadas`: Criação de queries que otimizassem a busca e manipulação de dados, mesmo em cenários com múltiplas junções e grandes tabelas.

## Tecnologias Usadas

- [MySQL](https://www.mysql.com/) - Banco de dados relacional utilizado para armazenar e manipular os dados.
- [SQL](https://www.w3schools.com/sql/) - Linguagem utilizada para criar, consultar e manipular o banco de dados.
- [Docker](https://www.docker.com/) - Ferramenta usada para conteinerizar o ambiente de desenvolvimento.

## Entre em contato:
<a href="mailto:zazac3179@gmail.com" target="_blank">
  <img align="center" src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="E-mail" height="40" width="auto" />
</a>
<a href="https://www.linkedin.com/in/isaque-s-oliveira/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="isaque oliveira" height="30" width="40" /></a>
