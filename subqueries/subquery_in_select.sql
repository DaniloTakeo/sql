SELECT 
  nome,
  (SELECT COUNT(*) FROM pedidos WHERE cliente_id = c.id) AS total_pedidos
FROM clientes c;