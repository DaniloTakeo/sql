-- Criar função segura para retornar pedidos de um cliente
CREATE OR REPLACE FUNCTION pedidos_do_cliente(cid INT)
RETURNS TABLE (id_pedido INT, total NUMERIC)
AS $$
    SELECT id, total FROM pedidos WHERE cliente_id = cid;
$$ LANGUAGE sql SECURITY DEFINER;

-- Conceder apenas execução da função
GRANT EXECUTE ON FUNCTION pedidos_do_cliente(INT) TO atendente;
REVOKE ALL ON pedidos FROM atendente;