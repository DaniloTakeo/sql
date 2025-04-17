SELECT 
  DATE(p.data_pedido) AS data,
  SUM(ip.quantidade * ip.preco_unitario) AS total_vendido
FROM pedidos p
JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY DATE(p.data_pedido)
ORDER BY data;