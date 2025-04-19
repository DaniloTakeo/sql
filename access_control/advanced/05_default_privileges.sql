-- Conceder privilégios padrão para futuras tabelas no schema public
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT, INSERT ON TABLES TO atendente;

-- (Opcional) Verificar o resultado criando uma nova tabela
CREATE TABLE nova_tabela_teste (
    id SERIAL PRIMARY KEY,
    info TEXT
);