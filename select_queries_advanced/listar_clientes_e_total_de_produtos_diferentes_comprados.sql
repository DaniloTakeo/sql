SELECT 
  c.nome,
  COUNT(DISTINCT ip.produto_id) AS produtos_distintos
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id
JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY c.nome;