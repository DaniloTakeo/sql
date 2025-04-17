SELECT 
  c.nome,
  SUM(ip.quantidade * ip.preco_unitario) AS total_gasto,
  RANK() OVER (ORDER BY SUM(ip.quantidade * ip.preco_unitario) DESC) AS ranking
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id
JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY c.nome;