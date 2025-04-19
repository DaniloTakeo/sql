-- Criar novo schema
CREATE SCHEMA financeiro;

-- Criar tabela de exemplo no schema
CREATE TABLE financeiro.faturas (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(id),
    valor NUMERIC,
    quitada BOOLEAN
);

-- Conceder acesso à role gerente
GRANT USAGE ON SCHEMA financeiro TO gerente;
GRANT SELECT, INSERT, UPDATE ON ALL TABLES IN SCHEMA financeiro TO gerente;