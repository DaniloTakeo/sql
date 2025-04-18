GRANT SELECT, INSERT, UPDATE ON clientes TO atendente;
GRANT SELECT, INSERT, UPDATE ON pedidos TO atendente;

-- Pode visualizar tudo
GRANT SELECT ON ALL TABLES IN SCHEMA public TO gerente;

-- Pode atualizar produtos e categorias
GRANT UPDATE ON produtos, categorias TO gerente;

-- Pode fazer tudo
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO admin;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT ON TABLES TO atendente;