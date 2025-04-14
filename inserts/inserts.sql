INSERT INTO categorias (id, nome) VALUES
(1, 'Eletrônicos'),
(2, 'Livros'),
(3, 'Roupas');

INSERT INTO produtos (id, nome, descricao, preco, estoque, categoria_id) VALUES
(1, 'Fone de Ouvido Bluetooth', 'Fone com cancelamento de ruído', 299.90, 50, 1),
(2, 'Livro: SQL para Iniciantes', 'Aprenda SQL do zero', 59.90, 100, 2),
(3, 'Camiseta Preta M', '100% algodão, tamanho M', 39.90, 200, 3);

INSERT INTO clientes (id, nome, email, telefone) VALUES
(1, 'Ana Silva', 'ana@gmail.com', '(11) 91234-5678'),
(2, 'Carlos Oliveira', 'carlos@yahoo.com', '(21) 99876-5432');

INSERT INTO enderecos (id, cliente_id, logradouro, numero, complemento, bairro, cidade, estado, cep) VALUES
(1, 1, 'Rua das Flores', '123', 'Apto 101', 'Jardim', 'São Paulo', 'SP', '01234-000'),
(2, 2, 'Av. Central', '456', '', 'Centro', 'Rio de Janeiro', 'RJ', '20000-000');

INSERT INTO pedidos (id, cliente_id, data_pedido, status) VALUES
(1, 1, '2024-04-01 10:00:00', 'PAGO'),
(2, 2, '2024-04-02 15:30:00', 'PENDENTE');

INSERT INTO itens_pedido (id, pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 1, 299.90),
(2, 1, 2, 2, 59.90),
(3, 2, 3, 3, 39.90);

INSERT INTO pagamentos (id, pedido_id, valor, data_pagamento, metodo_pagamento) VALUES
(1, 1, 419.70, '2024-04-01 12:00:00', 'CARTAO');