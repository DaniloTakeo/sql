CREATE TABLE produtos (
    id BIGINT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,

    CONSTRAINT pk_produto PRIMARY KEY (id),
    CONSTRAINT fk_categoria_produto FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);