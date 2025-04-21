CREATE OR REPLACE PROCEDURE criar_pedido(
    IN p_cliente_id INT,
    IN p_forma_pagamento_id INT,
    OUT p_pedido_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pedidos (cliente_id, forma_pagamento_id, data_pedido)
    VALUES (p_cliente_id, p_forma_pagamento_id, CURRENT_DATE)
    RETURNING id INTO p_pedido_id;
END;
$$;