SELECT 
  c.nome AS categoria,
  SUM(CASE WHEN pr.nome = 'Fone de Ouvido Bluetooth' THEN ip.quantidade ELSE 0 END) AS fones,
  SUM(CASE WHEN pr.nome = 'Livro: SQL para Iniciantes' THEN ip.quantidade ELSE 0 END) AS livros,
  SUM(CASE WHEN pr.nome = 'Camiseta Preta M' THEN ip.quantidade ELSE 0 END) AS roupas
FROM itens_pedido ip
JOIN produtos pr ON ip.produto_id = pr.id
JOIN categorias c ON pr.categoria_id = c.id
GROUP BY c.nome;