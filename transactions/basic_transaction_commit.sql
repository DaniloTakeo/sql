START TRANSACTION;

INSERT INTO clientes (nome, email)
VALUES ('João da Silva', 'joao.silva@email.com');

INSERT INTO pedidos (cliente_id, data_pedido, valor_total)
VALUES (LAST_INSERT_ID(), CURRENT_DATE, 100.00);

COMMIT;