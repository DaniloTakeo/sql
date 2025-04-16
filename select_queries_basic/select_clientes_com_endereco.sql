SELECT 
  cl.nome, 
  cl.email, 
  e.cidade
FROM clientes cl
JOIN enderecos e ON cl.id = e.cliente_id;