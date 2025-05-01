SELECT
  cliente_id,
  data_pedido,
  valor_total,
  SUM(valor_total) OVER (PARTITION BY cliente_id ORDER BY data_pedido) AS total_acumulado
FROM pedidos;