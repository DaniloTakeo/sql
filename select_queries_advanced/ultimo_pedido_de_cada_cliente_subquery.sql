SELECT *
FROM pedidos p
WHERE p.data_pedido = (
  SELECT MAX(p2.data_pedido)
  FROM pedidos p2
  WHERE p2.cliente_id = p.cliente_id
);