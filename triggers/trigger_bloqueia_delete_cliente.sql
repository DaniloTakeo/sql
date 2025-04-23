CREATE TRIGGER trigger_bloqueia_delete_cliente
BEFORE DELETE ON clientes
FOR EACH ROW
EXECUTE FUNCTION impedir_exclusao_cliente_com_pedidos();