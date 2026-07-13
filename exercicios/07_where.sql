/* Listar todas as transações
adicionando uma coluna nova
sinalizando “alto”, “médio” e “baixo” 
para o valor dos pontos [<10 ; <500; >=500] */

SELECT  IdCliente,
        IdTransacao,
        qtdePontos,
    CASE
        WHEN qtdePontos <= 10 THEN 'baixo'
        WHEN qtdePontos < 500 THEN 'médio'
        ELSE 'alto'
    END AS Categoria
FROM    transacoes

ORDER BY QtdePontos DESC
