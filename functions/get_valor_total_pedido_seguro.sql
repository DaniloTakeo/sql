CREATE OR REPLACE FUNCTION get_valor_total_pedido_seguro(p_pedido_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC;
BEGIN
    -- Verifica se o pedido existe
    IF NOT EXISTS (SELECT 1 FROM pedidos WHERE id = p_pedido_id) THEN
        RAISE EXCEPTION 'Pedido com ID % não encontrado.', p_pedido_id;
    END IF;

    -- Calcula o valor total dos itens do pedido
    SELECT COALESCE(SUM(i.quantidade * i.preco_unitario), 0)
    INTO total
    FROM itens_pedido i
    WHERE i.pedido_id = p_pedido_id;

    RETURN total;
END;
$$ LANGUAGE plpgsql;