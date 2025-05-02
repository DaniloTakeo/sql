WITH pedidos_2023 AS (
    SELECT * FROM pedidos WHERE YEAR(data_pedido) = 2023
),
itens_com_produto AS (
    SELECT i.*, p.nome
    FROM pedidos_itens i
    JOIN produtos p ON p.id = i.produto_id
)
SELECT i.*, o.data_pedido, o.cliente_id
FROM pedidos_2023 o
JOIN itens_com_produto i ON o.id = i.pedido_id;