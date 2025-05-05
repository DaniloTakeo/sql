-- Habilite a extensão antes:
-- CREATE EXTENSION IF NOT EXISTS tablefunc;

SELECT * FROM crosstab(
  'SELECT cliente_id, mes, total FROM pedidos_por_mes ORDER BY 1,2',
  'SELECT DISTINCT mes FROM pedidos_por_mes ORDER BY 1'
) AS ct(cliente_id INT, janeiro NUMERIC, fevereiro NUMERIC, marco NUMERIC);
