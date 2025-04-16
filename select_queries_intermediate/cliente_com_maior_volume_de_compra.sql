SELECT nome
FROM clientes
WHERE id = (
  SELECT p.cliente_id
  FROM pedidos p
  JOIN itens_pedido ip ON ip.pedido_id = p.id
  GROUP BY p.cliente_id
  ORDER BY SUM(ip.quantidade * ip.preco_unitario) DESC
  LIMIT 1
);