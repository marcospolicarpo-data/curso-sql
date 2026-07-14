-- Qual o valor medio de pontos positivos por dia?


SELECT  
        sum(qtdePontos) AS totalpontos,
        count(substr(DtCriacao, 1, 10)) AS qtdeDiasRepetidos,
        count(DISTINCT substr(DtCriacao, 1, 10)) AS qtdeDiasUnicos,
        sum(qtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS mediapontospdia
FROM    transacoes
WHERE   qtdePontos > 0