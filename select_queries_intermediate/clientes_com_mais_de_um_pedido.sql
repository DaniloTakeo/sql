SELECT 
  c.nome,
  COUNT(p.id) AS total_pedidos
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.nome
HAVING COUNT(p.id) > 1;