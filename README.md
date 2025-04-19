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

#### 3. Utilize um SGBD compatível (PostgreSQL, por exemplo) para executar os scripts.

---

## 🎯 Objetivos:

- Reforçar os conceitos de SQL na prática
- Treinar modelagem de banco de dados
- Praticar diferentes níveis de complexidade em consultas
- Entender como controlar acessos e permissões no banco

---

## ✍️ Autor:
Danilo Takeo Kanizawa

