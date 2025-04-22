-- Exemplo: Pedido existente
SELECT get_valor_total_pedido_seguro(1);

-- Exemplo: Pedido inexistente (deve lançar exceção)
SELECT get_valor_total_pedido_seguro(999);