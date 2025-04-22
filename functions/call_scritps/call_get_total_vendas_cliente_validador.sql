-- Exemplo: Cliente ativo com pedidos
SELECT get_total_vendas_cliente_validador(1);

-- Exemplo: Cliente inativo ou inexistente (deve lançar exceção)
SELECT get_total_vendas_cliente_validador(999);