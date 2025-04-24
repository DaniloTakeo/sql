CREATE OR REPLACE VIEW view_pedidos_com_clientes AS
SELECT 
    p.id AS pedido_id,
    p.data_pedido,
    c.nome AS cliente_nome,
    c.email,
    p.valor_total
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;