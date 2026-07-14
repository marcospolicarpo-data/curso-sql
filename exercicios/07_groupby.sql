--Qual o produto mais transacionado?

SELECT  IdProduto,
        count(DISTINCT IdTransacao)
FROM    transacao_produto

GROUP BY 1

ORDER BY 2 DESC