-- Selecione todas as transações de 50 pontos (exatos)

SELECT  IdTransacao,
        IdCliente,
        QtdePontos

FROM transacoes

WHERE QtdePontos = 50

