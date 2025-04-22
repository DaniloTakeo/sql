CREATE OR REPLACE FUNCTION get_valor_total_pedido(p_pedido_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC;
BEGIN
    SELECT COALESCE(SUM(i.quantidade * i.preco_unitario), 0)
    INTO total
    FROM itens_pedido i
    WHERE i.pedido_id = p_pedido_id;

    RETURN total;
END;
$$ LANGUAGE plpgsql;