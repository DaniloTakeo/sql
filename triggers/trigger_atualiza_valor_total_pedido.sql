CREATE TRIGGER trigger_atualiza_valor_total_pedido
AFTER INSERT OR UPDATE OR DELETE ON itens_pedido
FOR EACH ROW
EXECUTE FUNCTION atualizar_valor_total_pedido();