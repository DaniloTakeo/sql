SELECT p.id, c.nome AS cliente
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
LEFT JOIN pagamentos pg ON p.id = pg.pedido_id
WHERE pg.id IS NULL;