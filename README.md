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

## 🧠 `functions/` – Funções definidas pelo usuário

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

