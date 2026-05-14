/* Selecione todos os clientes
com email cadastrado */

SELECT  idCliente,
        flEmail

FROM    clientes

-- WHERE   flEmail = 1
-- WHERE   flEmail != 0
WHERE   flEmail <> 0


