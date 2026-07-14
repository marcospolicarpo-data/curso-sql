-- Quantos produtos sao de rpg?

SELECT  DescCategoriaProduto,
        count(*) AS qtdeprodutos
FROM    produtos

WHERE   DescCategoriaProduto = 'rpg'

GROUP BY DescCategoriaProduto