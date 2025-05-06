UPDATE clientes_json
SET dados_json = jsonb_set(dados_json, '{email}', '"novo@email.com"', false)
WHERE cliente_id = 1;