-- Atualiza o preço de um produto
CREATE OR REPLACE PROCEDURE atualizar_preco_produto(
    IN p_produto_id INT,
    IN p_novo_preco NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE produtos
    SET preco = p_novo_preco
    WHERE id = p_produto_id;
END;
$$;