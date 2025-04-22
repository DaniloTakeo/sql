CREATE OR REPLACE FUNCTION get_total_vendas_cliente_validador(p_cliente_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC;
BEGIN
    -- Verifica se o cliente existe e está ativo
    IF NOT EXISTS (
        SELECT 1 FROM clientes
        WHERE id = p_cliente_id AND status = 'ativo'
    ) THEN
        RAISE EXCEPTION 'Cliente % inativo ou inexistente.', p_cliente_id;
    END IF;

    -- Soma o valor dos pedidos
    SELECT COALESCE(SUM(valor_total), 0)
    INTO total
    FROM pedidos
    WHERE cliente_id = p_cliente_id;

    RETURN total;
END;
$$ LANGUAGE plpgsql;