WITH RECURSIVE numeros(n) AS (
  SELECT 1
  UNION ALL
  SELECT n + 1 FROM numeros WHERE n < 10
)
SELECT * FROM numeros;
