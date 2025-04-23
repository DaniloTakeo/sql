CREATE OR REPLACE FUNCTION log_operacoes_produtos()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO log_acoes (tabela, operacao, registro_id)
    VALUES ('produtos', TG_OP, NEW.id);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;