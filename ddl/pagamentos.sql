CREATE TABLE pagamentos (
    id BIGINT,
    pedido_id BIGINT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_pagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    metodo_pagamento VARCHAR(20),

    CONSTRAINT pk_pagamento PRIMARY KEY (id),
    CONSTRAINT fk_pedido_pagamento FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);