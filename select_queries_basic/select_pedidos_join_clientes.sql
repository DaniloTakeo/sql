SELECT p.id AS pedido_id, c.nome AS cliente, p.data_pedido, p.status
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;