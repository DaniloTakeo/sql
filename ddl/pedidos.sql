CREATE TABLE pedidos (
    id BIGINT,
    cliente_id BIGINT NOT NULL,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'PENDENTE',

    CONSTRAINT pk_pedido PRIMARY KEY (id),
    CONSTRAINT fk_cliente_pedido FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);