SELECT
  cliente_id,
  key,
  value
FROM clientes_json,
     jsonb_each_text(dados_json)
WHERE key LIKE 'tel%';