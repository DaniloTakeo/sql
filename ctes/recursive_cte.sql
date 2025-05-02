WITH RECURSIVE hierarquia_categorias AS (
    SELECT id, nome, categoria_pai_id, 1 AS nivel
    FROM categorias
    WHERE categoria_pai_id IS NULL

    UNION ALL

    SELECT c.id, c.nome, c.categoria_pai_id, h.nivel + 1
    FROM categorias c
    INNER JOIN hierarquia_categorias h ON c.categoria_pai_id = h.id
)
SELECT * FROM hierarquia_categorias ORDER BY nivel;