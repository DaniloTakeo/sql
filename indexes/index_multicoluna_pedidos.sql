CREATE INDEX idx_pedidos_cliente_data
ON pedidos (cliente_id, data_pedido);