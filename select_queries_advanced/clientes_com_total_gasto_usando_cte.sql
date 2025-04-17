WITH total_gastos AS (
  SELECT 
    c.id AS cliente_id,
    c.nome,
    SUM(ip.quantidade * ip.preco_unitario) AS total
  FROM clientes c
  JOIN pedidos p ON p.cliente_id = c.id
  JOIN itens_pedido ip ON ip.pedido_id = p.id
  GROUP BY c.id, c.nome
)
SELECT * FROM total_gastos
ORDER BY total DESC;