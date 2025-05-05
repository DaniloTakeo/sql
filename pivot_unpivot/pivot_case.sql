SELECT
  cliente_id,
  SUM(CASE WHEN EXTRACT(MONTH FROM data_pedido) = 1 THEN valor_total ELSE 0 END) AS janeiro,
  SUM(CASE WHEN EXTRACT(MONTH FROM data_pedido) = 2 THEN valor_total ELSE 0 END) AS fevereiro
FROM pedidos
GROUP BY cliente_id;