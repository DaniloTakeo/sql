-- Exemplo de atualização com cursor
DECLARE id INT;
DECLARE total DECIMAL(10,2);

DECLARE cursor_pedidos CURSOR FOR
  SELECT id, valor_total FROM pedidos;

OPEN cursor_pedidos;

LOOP
  FETCH cursor_pedidos INTO id, total;
  UPDATE pedidos
  SET valor_total = total * 1.1
  WHERE id = id;
END LOOP;

CLOSE cursor_pedidos;