CREATE TRIGGER trigger_log_produtos
AFTER INSERT OR UPDATE OR DELETE ON produtos
FOR EACH ROW
EXECUTE FUNCTION log_operacoes_produtos();