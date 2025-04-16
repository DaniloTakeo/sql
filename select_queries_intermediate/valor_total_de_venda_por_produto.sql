SELECT 
  pr.nome AS produto,
  SUM(ip.quantidade) AS total_vendido,
  SUM(ip.quantidade * ip.preco_unitario) AS receita_total
FROM itens_pedido ip
JOIN produtos pr ON ip.produto_id = pr.id
GROUP BY pr.nome
ORDER BY receita_total DESC;