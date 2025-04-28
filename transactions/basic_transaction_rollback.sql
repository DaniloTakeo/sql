START TRANSACTION;

INSERT INTO clientes (nome, email)
VALUES ('Maria Souza', 'maria.souza@email.com');

-- Erro de integridade simulando uma falha
INSERT INTO pedidos (cliente_id, data_pedido, valor_total)
VALUES (99999, CURRENT_DATE, 200.00);  -- cliente_id inexistente

ROLLBACK;