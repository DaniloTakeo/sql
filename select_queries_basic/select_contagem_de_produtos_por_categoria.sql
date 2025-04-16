SELECT c.nome AS categoria, COUNT(pr.id) AS total_produtos
FROM categorias c
LEFT JOIN produtos pr ON pr.categoria_id = c.id
GROUP BY c.nome;