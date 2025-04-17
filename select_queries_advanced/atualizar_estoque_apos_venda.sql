UPDATE produtos
SET estoque = estoque - 1
WHERE id = 1
RETURNING id, nome, estoque;