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

