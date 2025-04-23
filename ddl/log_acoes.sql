CREATE TABLE log_acoes (
    id SERIAL PRIMARY KEY,
    tabela VARCHAR(50),
    operacao VARCHAR(10),
    registro_id INT,
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);