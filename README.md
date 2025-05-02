# 📚 Repositório de Estudos em SQL

Este repositório foi criado com o objetivo de estudar e praticar SQL, desde os conceitos mais básicos até recursos avançados, utilizando uma modelagem de banco de dados voltada para um sistema de vendas.

---

## 🧱 Modelo de Dados

O banco simula um sistema de vendas com as seguintes entidades principais:

- **clientes**: dados dos clientes
- **produtos**: catálogo de produtos
- **categorias**: classificação dos produtos
- **pedidos**: pedidos realizados por clientes
- **itens_pedido**: produtos associados a cada pedido
- **formas_pagamento**: tipos de pagamento disponíveis

📌 Veja o diagrama em [`diagramas/`](diagramas/) para entender a estrutura completa.

---

## 🔐 Controle de Acesso

### Básico:
- Criação de usuários e roles
- Atribuição de permissões simples

### Avançado:
Scripts na pasta `access_control/advanced/` demonstram como aplicar:
- Permissões por coluna
- Controle de acesso via *views*
- Funções com `SECURITY DEFINER`
- Permissões por schema
- Privilégios padrão (default privileges)
- Consultas de auditoria de permissões

---

## 🔄 Procedures

Scripts armazenados em `procedures/` encapsulam lógicas de negócio como:

- `criar_pedido.sql`: Cria um novo pedido para um cliente e forma de pagamento.
- `atualizar_preco_produto.sql`: Atualiza o preço de um produto.
- `inativar_cliente.sql`: Marca um cliente como inativo.
- `registrar_pagamento.sql`: Registra o pagamento de um pedido.

A pasta `procedures/call_scripts/` contém scripts de exemplo com `CALL` para testar cada procedure.

Em breve: tratamento de exceções com `EXCEPTION`, uso de `INOUT`, validações e lógica mais elaborada.

---

## 🧠 Functions – Funções definidas pelo usuário

Esta pasta contém funções SQL criadas para encapsular lógica de negócio e facilitar consultas reutilizáveis.

#### 🧩 Exemplos incluídos:

- `get_total_vendas_cliente.sql`  
  Retorna o total de vendas (soma dos pedidos) realizados por um cliente.

- `get_valor_total_pedido.sql`  
  Retorna o valor total de um pedido somando os itens e seus preços unitários.

- `get_produtos_por_categoria.sql`  
  Retorna os nomes dos produtos pertencentes a uma determinada categoria.

- `get_valor_total_pedido_seguro.sql`  
  Versão da função com validação: lança exceção se o pedido não existir.

- `get_total_vendas_cliente_validador.sql`  
  Valida se o cliente está ativo antes de retornar a soma de seus pedidos.

---

## 🔔 Triggers – Gatilhos automáticos de banco de dados

Esta pasta contém exemplos de triggers (gatilhos) em SQL que executam automaticamente ações após eventos como inserção, atualização ou exclusão de registros.

#### 🧩 Exemplos incluídos:

- `auditoria_precos`  
  Trigger que audita mudanças de preço na tabela `produtos`, registrando o preço antigo, o novo e a data da alteração.

- `atualizar_valor_total`  
  Trigger que atualiza automaticamente o campo `valor_total` da tabela `pedidos` sempre que itens forem adicionados, removidos ou alterados.

- `bloquear_delete_cliente`  
  Trigger que impede a exclusão de clientes que possuem pedidos associados.

- `log_geral`  
  Trigger genérica que registra ações (inserções, atualizações, deleções) em uma tabela de log, incluindo o tipo da operação e o ID do registro afetado.

---

## 👀 Views – Visões virtuais sobre os dados

Esta pasta contém exemplos de *views* (visões) SQL, que são consultas armazenadas no banco de dados e se comportam como tabelas virtuais.

As views são utilizadas para:
- Simplificar consultas complexas
- Encapsular lógica de negócio
- Padronizar e reutilizar trechos de SQL
- Restringir e organizar o acesso aos dados

#### 📄 Arquivos disponíveis:

- `view_pedidos_com_clientes.sql`  
  Exibe os pedidos junto com os dados do cliente correspondente.

- `view_estoque_baixo.sql`  
  Lista produtos cujo estoque está abaixo de um determinado limite (ex: < 10 unidades).

- `view_vendas_totais_por_produto.sql`  
  Mostra a quantidade total vendida de cada produto com base nos itens de pedido.

#### 🛠️ Observações:
- Views não armazenam dados, apenas o resultado da consulta.
- Podem ser utilizadas em JOINs e subqueries como qualquer tabela.
- Algumas views podem ser utilizadas para controle de acesso, permitindo exibir apenas colunas específicas.

---

## ⚡ Indexes – Índices para otimização de consultas

Esta pasta contém exemplos de criação de *indexes* (índices) no banco de dados para melhorar a performance de consultas.

Índices são estruturas que permitem localizar linhas de forma rápida, especialmente úteis em colunas usadas em filtros (`WHERE`), junções (`JOIN`) e ordenações (`ORDER BY`).

#### 📄 Arquivos disponíveis:

- `index_cliente_email.sql`  
  Cria um índice para acelerar buscas por e-mail dos clientes.

- `index_produto_nome.sql`  
  Cria um índice para otimizar consultas pelo nome dos produtos.

- `index_pedido_data.sql`  
  Índice para consultas baseadas na data do pedido.

- `index_multicoluna_pedidos.sql`  
  Índice combinando `cliente_id` e `data_pedido`, útil para relatórios filtrados por cliente e data.

#### 🛠️ Observações:
- Índices melhoram a performance de leitura, mas podem tornar operações de escrita (`INSERT`, `UPDATE`, `DELETE`) mais lentas.
- Índices ocupam espaço adicional no disco.
- Devem ser usados com critério para evitar degradação de performance geral.

---

## 🔄 Transactions – Transações em SQL

Esta pasta contém exemplos de uso de transações para garantir a atomicidade e a consistência das operações no banco de dados.

Transações garantem que um conjunto de operações SQL sejam tratadas como uma única unidade: ou todas as alterações são aplicadas, ou nenhuma é.

#### 📄 Arquivos disponíveis:

- `basic_transaction_commit.sql`  
  Exemplo simples de transação finalizada com `COMMIT`.

- `basic_transaction_rollback.sql`  
  Exemplo de transação que utiliza `ROLLBACK` em caso de erro.

- `transaction_transfer_funds.sql`  
  Simulação de transferência de fundos entre duas contas usando transações.

- `transaction_with_error_handling.sql`  
  Exemplo de transação com controle básico de erro para garantir rollback seguro.

#### 🛠️ Observações:
- Transações seguem as propriedades ACID: Atomicidade, Consistência, Isolamento e Durabilidade.
- É importante utilizar transações para garantir integridade em operações que envolvam múltiplas tabelas ou etapas críticas.
- A sintaxe de tratamento de erro pode variar conforme o sistema gerenciador de banco de dados (MySQL, PostgreSQL, SQL Server, etc.).

---

## 🔁 Cursores em SQL

Esta pasta contém exemplos de uso de cursores, que permitem iterar linha a linha sobre o resultado de uma consulta e aplicar lógica procedural.

Cursores são úteis em situações onde não é possível realizar toda a lógica desejada apenas com SQL declarativo, mas devem ser utilizados com cautela devido ao seu impacto em performance.

#### 📄 Arquivos disponíveis:

- `basic_cursor_example.sql`  
  Exemplo básico de um cursor iterando sobre clientes e exibindo seus nomes.

- `cursor_with_if_condition.sql`  
  Exemplo de cursor com lógica condicional para identificar clientes com saldo negativo e gerar alertas.

- `cursor_to_update_table.sql`  
  Exemplo de cursor utilizado para atualizar valores de uma tabela de pedidos com acréscimo percentual.

#### 🛠️ Observações:
- Cursores seguem a estrutura: `DECLARE`, `OPEN`, `FETCH`, `LOOP`, `CLOSE`.
- É necessário declarar um `HANDLER` para detectar o fim do cursor (`NOT FOUND`).
- Caso o SGBD permita, é possível usar blocos `BEGIN ... END` para lógica mais complexa.
- Quando possível, é preferível resolver o problema com comandos SQL vetorizados (`UPDATE`, `JOIN`, `CTE`), que costumam ter melhor desempenho.

---

## 🧪 Temporary Tables – Tabelas Temporárias

Esta pasta contém exemplos de uso de tabelas temporárias, estruturas úteis para armazenar dados intermediários durante a execução de scripts SQL. Elas são descartadas automaticamente ao final da sessão do banco de dados, não afetando os dados reais da aplicação.

#### 📄 Arquivos disponíveis:

- `basic_temp_table.sql`  
  Cria uma tabela temporária com clientes ativos e realiza uma simples seleção.

- `temp_table_with_join.sql`  
  Cria uma tabela temporária com pedidos de 2023 e realiza um `JOIN` com a tabela de clientes para exibir o nome e o valor dos pedidos.

- `temp_table_for_reporting.sql`  
  Cria uma tabela temporária para consolidar vendas por categoria de produto, útil para relatórios de negócio.

#### 🛠️ Observações:
- As tabelas temporárias são específicas da sessão e são automaticamente descartadas ao seu fim.
- É possível criar várias tabelas temporárias com o mesmo nome em sessões diferentes.
- Muito úteis para ETL, cálculos intermediários e simplificação de consultas complexas.
- Suporte e sintaxe podem variar entre SGBDs (MySQL, PostgreSQL, SQL Server).

---

## 🧠 Window Functions – Funções de Janela

Esta pasta contém exemplos de uso das funções de janela (window functions), que permitem realizar cálculos agregados ao longo de um conjunto de linhas relacionadas à linha atual, mantendo todas as linhas no resultado.

#### 📄 Arquivos disponíveis:

- `row_number_example.sql`  
  Atribui um número sequencial a cada cliente com base na ordenação por nome.

- `running_total_example.sql`  
  Calcula o total acumulado de pedidos por cliente, ordenado pela data do pedido.

- `partition_by_example.sql`  
  Calcula a média de preços de produtos dentro de cada categoria (`PARTITION BY`).

#### 🛠️ Observações:
- Funções de janela utilizam a cláusula `OVER()` para definir sua janela de atuação.
- A cláusula `PARTITION BY` divide os dados em grupos lógicos.
- A cláusula `ORDER BY` dentro de `OVER()` define a ordem das linhas dentro da partição.
- Exemplos comuns incluem: `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `SUM`, `AVG`, `LAG`, `LEAD`.
- São ideais para análises mais sofisticadas, como rankings, comparações entre linhas e totais acumulados.

---

### 🧩 CTEs – Common Table Expressions

Esta pasta contém exemplos de Expressões de Tabela Comum (CTEs), que permitem definir consultas temporárias nomeadas reutilizáveis dentro de comandos SQL, tornando as consultas mais legíveis e organizadas.

#### 📄 Arquivos disponíveis:

- `basic_cte.sql`  
  Define uma CTE para filtrar clientes ativos e realiza uma seleção adicional.

- `multiple_ctes.sql`  
  Utiliza múltiplas CTEs para consultar pedidos de 2023 e combinar com itens e produtos.

- `recursive_cte.sql`  
  Demonstra o uso de CTE recursiva para navegar em hierarquias de categorias.

#### 🛠️ Observações:
- CTEs são definidas com a cláusula `WITH`.
- Permitem evitar subqueries repetidas e melhoram a clareza do código.
- `WITH RECURSIVE` permite navegar estruturas hierárquicas, como árvores de categorias.
- Podem ser usadas com `SELECT`, `INSERT`, `UPDATE` e `DELETE`.

---

## 🚀 Como usar

#### 1. Clone este repositório:
   ```bash
   git clone git@github.com:DaniloTakeo/sql.git
   cd sql
   ```

#### 2.Siga a ordem recomendada para execução dos scripts:

- ddl/: Criação das tabelas e constraints
- inserts/: Inserção de dados iniciais
- access_control/: Criação de usuários e permissões (opcional)
- select_queries_*: Consultas para prática (do básico ao avançado)
- procedures/: Stored procedures e scripts de call

#### 3. Utilize um SGBD compatível (PostgreSQL, por exemplo) para executar os scripts.

---

## 🎯 Objetivos:

- Reforçar os conceitos de SQL na prática
- Treinar modelagem de banco de dados
- Praticar diferentes níveis de complexidade em consultas
- Entender como controlar acessos e permissões no banco

---

#### 💡 Observações:
- As funções, procedures e triggers utilizam a linguagem `plpgsql`.
- Algumas funções lançam exceções (`RAISE EXCEPTION`) para validar dados antes de processar.
- Scripts de execução estão localizados na subpasta `calls/`.

## ✍️ Autor:
Danilo Takeo Kanizawa

