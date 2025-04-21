-- Exemplo de uso da procedure criar_pedido
DO $$
DECLARE
    novo_pedido_id INT;
BEGIN
    CALL criar_pedido(1, 2, novo_pedido_id); -- cliente_id = 1, forma_pagamento_id = 2
    RAISE NOTICE 'Pedido criado com ID: %', novo_pedido_id;
END;
$$;