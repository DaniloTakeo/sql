SELECT *
FROM (
  SELECT 
    pr.nome,
    SUM(ip.quantidade) AS total_vendido,
    ROW_NUMBER() OVER (ORDER BY SUM(ip.quantidade) DESC) AS posicao
  FROM produtos pr
  JOIN itens_pedido ip ON pr.id = ip.produto_id
  GROUP BY pr.nome
) AS vendas
WHERE posicao = 1;