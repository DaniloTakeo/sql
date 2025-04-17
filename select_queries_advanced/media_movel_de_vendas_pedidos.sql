SELECT 
  p.id,
  p.data_pedido,
  SUM(ip.quantidade * ip.preco_unitario) AS total,
  AVG(SUM(ip.quantidade * ip.preco_unitario)) OVER (
    ORDER BY p.data_pedido 
    ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
  ) AS media_movel
FROM pedidos p
JOIN itens_pedido ip ON ip.pedido_id = p.id
GROUP BY p.id, p.data_pedido
ORDER BY p.data_pedido;