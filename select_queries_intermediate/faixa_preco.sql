SELECT 
  nome,
  preco,
  CASE 
    WHEN preco < 50 THEN 'Barato'
    WHEN preco BETWEEN 50 AND 200 THEN 'Médio'
    ELSE 'Caro'
  END AS faixa_preco
FROM produtos;