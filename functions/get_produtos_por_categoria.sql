CREATE OR REPLACE FUNCTION get_produtos_por_categoria(p_categoria_id INT)
RETURNS TABLE(nome_produto TEXT) AS $$
BEGIN
    RETURN QUERY
    SELECT p.nome
    FROM produtos p
    WHERE p.categoria_id = p_categoria_id;
END;
$$ LANGUAGE plpgsql;