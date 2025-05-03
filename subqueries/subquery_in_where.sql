SELECT nome FROM clientes
WHERE id IN (
    SELECT cliente_id FROM pedidos WHERE YEAR(data_pedido) = 2023
);