SELECT cliente_id, 'email' AS campo, email AS valor FROM clientes
UNION ALL
SELECT cliente_id, 'telefone', telefone FROM clientes;
