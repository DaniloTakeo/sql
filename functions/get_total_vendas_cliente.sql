CREATE OR REPLACE FUNCTION get_total_vendas_cliente(p_cliente_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC;
BEGIN
    SELECT COALESCE(SUM(p.valor_total), 0)
    INTO total
    FROM pedidos p
    WHERE p.cliente_id = p_cliente_id;

    RETURN total;
END;
$$ LANGUAGE plpgsql;