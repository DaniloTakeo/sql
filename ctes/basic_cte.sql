WITH clientes_ativos AS (
    SELECT * FROM clientes WHERE status = 'ativo'
)
SELECT * FROM clientes_ativos WHERE cidade = 'São Paulo';