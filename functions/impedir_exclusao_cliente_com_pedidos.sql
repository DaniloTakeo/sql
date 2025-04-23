CREATE OR REPLACE FUNCTION impedir_exclusao_cliente_com_pedidos()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM pedidos WHERE cliente_id = OLD.id
    ) THEN
        RAISE EXCEPTION 'Não é possível excluir cliente com pedidos registrados.';
    END IF;

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;