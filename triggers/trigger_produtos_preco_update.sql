CREATE TRIGGER trigger_auditoria_precos
AFTER UPDATE ON produtos
FOR EACH ROW
EXECUTE FUNCTION log_alteracao_preco();