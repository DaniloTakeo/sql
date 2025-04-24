CREATE OR REPLACE VIEW view_vendas_totais_por_produto AS
SELECT 
    p.id AS produto_id,
    p.nome,
    SUM(ip.quantidade) AS total_vendido
FROM produtos p
JOIN itens_pedido ip ON p.id = ip.produto_id
GROUP BY p.id, p.nome;