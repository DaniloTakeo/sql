WITH RECURSIVE hierarchy AS (
  SELECT id, nome, chefe_id, 1 AS nivel
  FROM funcionarios
  WHERE chefe_id IS NULL

  UNION ALL

  SELECT f.id, f.nome, f.chefe_id, h.nivel + 1
  FROM funcionarios f
  INNER JOIN hierarchy h ON f.chefe_id = h.id
)
SELECT * FROM hierarchy ORDER BY nivel, nome;
