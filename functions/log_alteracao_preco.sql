CREATE OR REPLACE FUNCTION log_alteracao_preco()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.preco <> OLD.preco THEN
        INSERT INTO auditoria_precos (produto_id, preco_antigo, preco_novo)
        VALUES (OLD.id, OLD.preco, NEW.preco);
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;