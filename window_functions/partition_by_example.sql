SELECT
  categoria_id,
  nome,
  preco,
  AVG(preco) OVER (PARTITION BY categoria_id) AS media_categoria
FROM produtos;
