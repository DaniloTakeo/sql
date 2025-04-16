SELECT 
  c.nome,
  COALESCE(SUM(ip.quantidade * ip.preco_unitario), 0) AS total_compras
FROM clientes c
LEFT JOIN pedidos p ON p.cliente_id = c.id
LEFT JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY c.nome;