-- Conceder acesso apenas às colunas nome e email da tabela clientes
REVOKE ALL ON clientes FROM atendente;

GRANT SELECT (nome, email) ON clientes TO atendente;