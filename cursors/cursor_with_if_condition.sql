-- Itera sobre clientes e executa lógica condicional
DECLARE saldo DECIMAL(10,2);
DECLARE id_cliente INT;

DECLARE cursor_saldos CURSOR FOR
  SELECT id, saldo FROM contas;

OPEN cursor_saldos;

LOOP
  FETCH cursor_saldos INTO id_cliente, saldo;
  IF saldo < 0 THEN
    -- Inserir alerta de conta negativa
    INSERT INTO alertas (cliente_id, mensagem)
    VALUES (id_cliente, 'Saldo negativo detectado');
  END IF;
END LOOP;

CLOSE cursor_saldos;