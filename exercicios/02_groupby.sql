-- qual cliente juntos mais pontos positivos
-- em 2025-05?

SELECT  idcliente,
        sum(QtdePontos) AS totalpontos
    
FROM    transacoes

WHERE   dtcriacao >= '2025-05-01' AND dtcriacao < '2025-06-01'
        AND qtdePontos > 0

GROUP BY idCliente

ORDER BY sum(qtdePontos) DESC

LIMIT 1 