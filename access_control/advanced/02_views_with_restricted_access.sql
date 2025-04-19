-- Criar view com dados públicos dos clientes
CREATE OR REPLACE VIEW clientes_publicos AS
SELECT nome, email FROM clientes;

-- Conceder acesso apenas à view
GRANT SELECT ON clientes_publicos TO atendente;
REVOKE ALL ON clientes FROM atendente;