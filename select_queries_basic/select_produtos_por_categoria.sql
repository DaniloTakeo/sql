SELECT pr.nome AS produto, c.nome AS categoria
FROM produtos pr
JOIN categorias c ON pr.categoria_id = c.id;