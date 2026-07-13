/* Listar todas as transacoes adicionando uma coluna
nova sinalizando:
- baixo = < 10
- médio < 500
- alto >= 500 */


SELECT
        IdTransacao,
        qtdePontos,

        CASE
            WHEN qtdePontos < 10 THEN 'baixo'
            WHEN qtdePontos < 500 THEN 'medio'
            ELSE 'alto'
        END AS pontuacao
        
FROM    transacoes