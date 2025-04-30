CREATE TEMPORARY TABLE temp_pedidos_2023 AS
SELECT * FROM pedidos
WHERE YEAR(data_pedido) = 2023;

SELECT c.nome, p.valor_total
FROM temp_pedidos_2023 p
JOIN clientes c ON p.cliente_id = c.id;