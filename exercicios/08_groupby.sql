-- Qual o produto com mais pontos transacionados?

SELECT  IdProduto,
        sum(vlProduto)
FROM    transacao_produto

GROUP BY IdProduto

ORDER BY sum(vlproduto) DESC

