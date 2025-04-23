CREATE TABLE auditoria_precos (
    id SERIAL PRIMARY KEY,
    produto_id INT NOT NULL,
    preco_antigo NUMERIC NOT NULL,
    preco_novo NUMERIC NOT NULL,
    data_alteracao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);