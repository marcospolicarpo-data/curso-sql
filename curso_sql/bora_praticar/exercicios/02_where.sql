/* Lista de pedidos realizados
no fim de semana */

SELECT  IdCliente,
        DtCriacao,
        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diasemana
FROM    transacoes

WHERE   diasemana IN ('0', '6')
