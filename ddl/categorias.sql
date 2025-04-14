CREATE TABLE categorias (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,

    CONSTRAINT pk_categoria PRIMARY KEY (id)
);