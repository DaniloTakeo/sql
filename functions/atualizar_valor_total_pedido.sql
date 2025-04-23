CREATE OR REPLACE FUNCTION atualizar_valor_total_pedido()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pedidos
    SET valor_total = (
        SELECT SUM(preco_unitario * quantidade)
        FROM itens_pedido
        WHERE pedido_id = NEW.pedido_id
    )
    WHERE id = NEW.pedido_id;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;