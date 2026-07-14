-- Quantos clientes tem email cadastrado?

SELECT  
        FlEmail,
        count(idcliente)

FROM    clientes

GROUP BY flEmail;

SELECT
        sum(flEmail)
FROM    clientes;

