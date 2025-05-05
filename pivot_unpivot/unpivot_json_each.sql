SELECT cliente_id, key, value
FROM (
  SELECT cliente_id, jsonb_build_object('email', email, 'telefone', telefone) AS dados
  FROM clientes
) AS t, jsonb_each_text(dados);
