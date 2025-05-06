SELECT
  cliente_id,
  json_array_elements_text(dados_json -> 'telefones') AS telefone
FROM clientes_json;