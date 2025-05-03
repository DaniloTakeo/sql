SELECT cidade, media_pedidos
FROM (
    SELECT cidade, AVG(valor_total) AS media_pedidos
    FROM pedidos p
    JOIN clientes c ON c.id = p.cliente_id
    GROUP BY cidade
) AS sub;
