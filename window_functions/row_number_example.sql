SELECT
  cliente_id,
  nome,
  ROW_NUMBER() OVER (ORDER BY nome) AS posicao
FROM clientes;