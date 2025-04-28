START TRANSACTION;

BEGIN
    UPDATE contas
    SET saldo = saldo - 150
    WHERE id = 1;
  
    UPDATE contas
    SET saldo = saldo + 150
    WHERE id = 2;
  
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;