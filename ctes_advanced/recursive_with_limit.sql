WITH RECURSIVE contagem(n) AS (
  SELECT 5
  UNION ALL
  SELECT n - 1 FROM contagem WHERE n > 0
)
SELECT * FROM contagem;
