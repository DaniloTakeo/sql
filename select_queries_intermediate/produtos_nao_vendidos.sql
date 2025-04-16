SELECT pr.id, pr.nome
FROM produtos pr
LEFT JOIN itens_pedido ip ON pr.id = ip.produto_id
WHERE ip.id IS NULL;