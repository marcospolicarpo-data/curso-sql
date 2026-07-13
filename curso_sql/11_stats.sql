-- traga a media de pontos no mes de junho de 2025.

SELECT  round(avg(qtdePontos),3) AS mediapts,
-- o round serve para definir a quantidade de casas decimais.
        1. * sum(qtdePontos) / count(idCliente),
        min(QtdePontos) AS MinCarteira,
        max(QtdePontos) AS MaxCarteira

FROM    clientes
WHERE   DtCriacao >= '2025-06-01' AND DtCriacao < '2025-07-01'