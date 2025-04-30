CREATE TEMPORARY TABLE relatorio_vendas_resumo (
    categoria_id INT,
    total_vendas DECIMAL(10,2)
);

INSERT INTO relatorio_vendas_resumo (categoria_id, total_vendas)
SELECT categoria_id, SUM(valor_total)
FROM produtos p
JOIN pedidos_itens i ON p.id = i.produto_id
JOIN pedidos o ON o.id = i.pedido_id
GROUP BY categoria_id;

SELECT * FROM relatorio_vendas_resumo;