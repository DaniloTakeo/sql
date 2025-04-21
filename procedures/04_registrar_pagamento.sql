-- Registra pagamento de um pedido
CREATE OR REPLACE PROCEDURE registrar_pagamento(
    IN p_pedido_id INT,
    IN p_valor_pago NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pagamentos (pedido_id, valor, data_pagamento)
    VALUES (p_pedido_id, p_valor_pago, CURRENT_DATE);
END;
$$;