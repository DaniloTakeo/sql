CREATE OR REPLACE VIEW view_estoque_baixo AS
SELECT 
    id,
    nome,
    preco,
    estoque
FROM produtos
WHERE estoque < 10;