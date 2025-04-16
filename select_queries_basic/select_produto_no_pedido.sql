SELECT 
  ip.id AS item_id,
  pr.nome AS produto,
  ip.quantidade,
  ip.preco_unitario,
  (ip.quantidade * ip.preco_unitario) AS total_item
FROM itens_pedido ip
JOIN produtos pr ON ip.produto_id = pr.id
WHERE ip.pedido_id = 1;