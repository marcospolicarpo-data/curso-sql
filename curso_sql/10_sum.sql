-- -- Aprendendo a utilizar a soma no sql

-- -- Quantos pontos foram conquistados no geral no mes de julho de 2025?

-- SELECT  sum(qtdePontos) AS  qtdePontosJulho
-- FROM    transacoes
-- WHERE   DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'
-- -- perceba que na qtdepontos temos numeros negativos
-- -- entao temos que somar somente o que for maior que 0
-- AND     qtdePontos > 0


-- traga os pontos positivos e os negativos e some eles

SELECT  sum(qtdePontos) AS Saldo,

        sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
        END) AS PontosPositivos,

        sum(CASE
            WHEN qtdePontos < 0 THEN qtdePontos
        END) AS PontosNegativos
FROM    transacoes

WHERE   DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'