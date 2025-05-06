SELECT
  cliente_id,
  dados_json ->> 'email' AS email
FROM clientes_json;