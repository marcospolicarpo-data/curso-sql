--Qual dia da semana tem mais pedidos em 2025?

SELECT 
        strftime('%w', substr(DtCriacao,1,10)) AS Data,
        count(DISTINCT IdTransacao) AS QtdePedidos,
        CASE
            WHEN strftime('%w', substr(DtCriacao,1,10)) = '0' THEN 'Domingo'
            WHEN strftime('%w', substr(DtCriacao,1,10)) = '1' THEN 'Segunda'
            WHEN strftime('%w', substr(DtCriacao,1,10)) = '2' THEN 'Terça'
            WHEN strftime('%w', substr(DtCriacao,1,10)) = '3' THEN 'Quarta'
            WHEN strftime('%w', substr(DtCriacao,1,10)) = '4' THEN 'Quinta'
            WHEN strftime('%w', substr(DtCriacao,1,10)) = '5' THEN 'Sexta'
            WHEN strftime('%w', substr(DtCriacao,1,10)) = '6' THEN 'Sabado'
            END AS DiaSemana

FROM    transacoes

WHERE   substr(DtCriacao,1,4) = '2025'

GROUP BY strftime('%w', substr(DtCriacao,1,10))

ORDER BY count(DISTINCT IdTransacao) DESC