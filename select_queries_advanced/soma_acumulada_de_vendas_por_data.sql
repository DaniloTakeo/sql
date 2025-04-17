SELECT 
  p.id AS pedido_id,
  p.data_pedido,
  SUM(ip.quantidade * ip.preco_unitario) OVER (ORDER BY p.data_pedido) AS soma_acumulada
FROM pedidos p
JOIN itens_pedido ip ON ip.pedido_id = p.id
ORDER BY p.data_pedido;