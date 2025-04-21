-- Inativa um cliente
CREATE OR REPLACE PROCEDURE inativar_cliente(IN p_cliente_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE clientes
    SET ativo = FALSE
    WHERE id = p_cliente_id;
END;
$$;