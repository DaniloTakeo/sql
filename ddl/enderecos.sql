CREATE TABLE enderecos (
    id BIGINT,
    cliente_id BIGINT NOT NULL,
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    cep VARCHAR(10),

    CONSTRAINT pk_endereco PRIMARY KEY (id)
    CONSTRAINT fk_cliente_endereco FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);