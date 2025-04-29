DELIMITER $$

DECLARE done INT DEFAULT FALSE;
DECLARE nome_cliente VARCHAR(100);

DECLARE cliente_cursor CURSOR FOR
  SELECT nome FROM clientes;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

OPEN cliente_cursor;

read_loop: LOOP
  FETCH cliente_cursor INTO nome_cliente;
  IF done THEN
    LEAVE read_loop;
  END IF;
  -- Exemplo: exibindo nome (em sistemas que suportam PRINT)
  SELECT CONCAT('Cliente: ', nome_cliente);
END LOOP;

CLOSE cliente_cursor;
$$
DELIMITER ;