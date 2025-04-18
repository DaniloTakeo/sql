-- Criar usuários
CREATE USER maria WITH PASSWORD 'senha123';
CREATE USER joao WITH PASSWORD 'senha456';
CREATE USER carla WITH PASSWORD 'admin789';

-- Atribuir roles
GRANT atendente TO maria;
GRANT gerente TO joao;
GRANT admin TO carla;