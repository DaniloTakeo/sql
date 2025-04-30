CREATE TEMPORARY TABLE temp_clientes_ativos AS
SELECT * FROM clientes
WHERE status = 'ativo';

SELECT * FROM temp_clientes_ativos;