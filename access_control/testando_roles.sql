SET ROLE maria;
-- Ela consegue fazer isso:
SELECT * FROM clientes;
INSERT INTO pedidos (...) VALUES (...);
-- Mas vai falhar com isso:
DELETE FROM produtos;

SET ROLE joao;
-- Pode consultar tudo e atualizar produtos

SET ROLE carla;
-- Pode tudo