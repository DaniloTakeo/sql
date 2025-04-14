CREATE TABLE clientes (
    id BIGINT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro DATE DEFAULT CURRENT_DATE,

    CONSTRAINT pk_cliente PRIMARY KEY (id)
);
