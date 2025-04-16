SELECT 
  p.id AS pedido_id,
  c.nome AS cliente,
  SUM(ip.quantidade * ip.preco_unitario) AS total_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY p.id, c.nome;