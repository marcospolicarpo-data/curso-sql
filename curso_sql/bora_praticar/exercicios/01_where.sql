/* Lista de transações
com apenas 1 ponto */

SELECT  IdCliente,
        QtdePontos

FROM    transacoes

WHERE   QtdePontos = 1
