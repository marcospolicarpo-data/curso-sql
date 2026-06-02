/* Quantas transaçoes foram feitas em
Julho de 2025? E quantos clientes transacionaram em Jul-2025? */

SELECT  
        COUNT(idtransacao) AS QtdeTransacoes,
        COUNT(DISTINCT IdCliente) AS Qtdecliente,
        strftime('%Y-%m', DtCriacao) AS MesAno

FROM    transacoes

WHERE   strftime('%Y-%m', DtCriacao) = '2025-07'

GROUP BY strftime('%Y-%m', DtCriacao)