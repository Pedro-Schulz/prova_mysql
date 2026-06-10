SELECT nome_setor 
FROM setor;

SELECT nome_funcionario, cargo_funcionario, salario_funcionario
FROM funcionario;

SELECT nome_produto, id_produtoIndustrial as codigo, precoFabricacao_produto
FROM produto_industrial;

SELECT nome_produto, qtdEstoque_produto
FROM produto_industrial;

SELECT nome_funcionario
FROM funcionario
WHERE dataAdmissao_funcionario > '2025-01-01';

SELECT nome_produto
FROM produto_industrial
WHERE qtdEstoque_produto > 100;

SELECT id_fornecedor
FROM fornecedor
WHERE cidade_fornecedor = "São Paulo";

SELECT nome_produto
FROM produto_industrial
WHERE precoFabricacao_produto >= 50 AND precoFabricacao_produto <= 500;

SELECT nome_funcionario
FROM funcionario
WHERE salario_funcionario > 3000;

SELECT nome_funcionario
FROM funcionario
WHERE cargo_funcionario = "Operador";

SELECT id_fornecedor
FROM fornecedor
WHERE telefone_fornecedor IS NOT NULL;

SELECT nome_produto
FROM produto_industrial
WHERE descricao_produto LIKE'%aga%';

SELECT nome_produto
FROM produto_industrial
ORDER BY(nome_produto);

SELECT nome_produto, precoFabricacao_produto as preco
FROM produto_industrial
ORDER BY(precoFabricacao_produto) DESC;

SELECT id_op
FROM ordem_producao
WHERE status_op = "Concluída";

SELECT COUNT(id_funcionario) as qtd_funcionarios
FROM funcionario;

SELECT AVG(salario_funcionario) as media_salarial
FROM funcionario;

SELECT MIN(precoFabricacao_produto) as menor_preco
FROM produto_industrial;

SELECT categoria_produto, COUNT(id_produtoIndustrial) as qtd_produtos
FROM produto_industrial
GROUP BY(categoria_produto);

SELECT COUNT(O.id_funcionario) as qtd_ordensVinculadas
FROM funcionario as F
JOIN ordem_producao as O on O.id_funcionario = F.id_funcionario;

SELECT nome_funcionario, S.nome_setor
FROM funcionario as F
JOIN setor as S on S.id_setor = F.id_setor;

SELECT nome_produto, categoria_produto
FROM produto_industrial;

SELECT nome_produto, precoFabricacao_produto, id_fornecedor
FROM produto_industrial;

SELECT nome_produto, precoFabricacao_produto
FROM produto_industrial;

SELECT nome_funcionario, salario_funcionario
FROM funcionario
WHERE salario_funcionario > (
    SELECT AVG(salario_funcionario)
    FROM funcionario
);

# Query's avançadas:

SELECT F.nome_funcionario, F.salario_funcionario, S.nome_setor
FROM funcionario as F
JOIN setor as S ON S.id_setor = F.id_funcionario;

SELECT P.nome_produto, P.categoria_produto, F.cnpj_fornecedor
FROM produto_industrial as P
JOIN fornecedor as F ON P.id_fornecedor = F.id_fornecedor;
# JOIN categoria as C ON C.id categoria = P.id_categoria ---> Caso categoria fosse uma tabela

SELECT nome_funcionario, salario_funcionario
FROM funcionario
WHERE salario_funcionario > (
    SELECT AVG(salario_funcionario)
    FROM funcionario
);

SELECT nome_produto, precoFabricacao_produto
FROM produto_industrial
WHERE precoFabricacao_produto > (
    SELECT AVG(precoFabricacao_produto)
    FROM produto_industrial
);

SELECT COUNT(F.id_funcionario) as qtd_funcionarios, nome_setor
FROM setor as S
JOIN funcionario as F ON F.id_setor = S.id_setor
GROUP BY (nome_setor);

SELECT nome_produto, SUM(O.qtdProduzido_op) as quantidade_produzida
FROM produto_industrial as P
JOIN ordem_producao as O ON O.id_produtoIndustrial = P.id_produtoIndustrial
GROUP BY (nome_produto);

# INCOMPLETO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
SELECT cnpj_fornecedor, COUNT(P.id_fornecedor) AS produtos_cadastrados
FROM fornecedor AS F
JOIN produto_industrial AS P ON P.id_fornecedor = F.id_fornecedor
GROUP BY (cnpj_fornecedor);

SELECT nome_funcionario, COUNT(O.id_funcionario) AS vinculos_op
FROM funcionario AS F
JOIN ordem_producao AS O ON F.id_funcionario = O.id_funcionario
GROUP BY (F.id_funcionario)
HAVING vinculos_op > 5;

SELECT nome_produto, precoFabricacao_produto
FROM produto_industrial
WHERE precoFabricacao_produto = (
    SELECT MAX(precoFabricacao_produto)
    FROM produto_industrial
);

# INCOMPLETO!!!
SELECT nome_setor, COUNT(F.id_setor) AS qtd_vinculos
FROM setor AS S
JOIN funcionario AS F ON F.id_setor = S.id_setor
WHERE qtd_vinculos > (
    SELECT AVG(qtd_vinculos) (
        select count(F.id_setor) as qtd_vinculos FROM setor
        FROM funcionario AS F
        JOIN setor AS S ON S.id_setor = F.id_setor
    )
)
GROUP BY (S.id_setor);

# INCOMPLETO!!!
SELECT nome_produto, COUNT(Q.id_op) as qtd
FROM produto_industrial AS P
JOIN ordem_producao AS O ON O.id_produtoIndustrial = P.id_produtoIndustrial
JOIN controle_qualidade AS Q ON Q.id_op = O.id_op
GROUP BY (Q.id_op);

SELECT F.nome_funcionario
FROM ordem_producao AS O
JOIN funcionario AS F ON F.id_funcionario = O.id_funcionario
JOIN produto_industrial AS P ON P.id_produtoIndustrial = O.id_produtoIndustrial
WHERE P.categoria_produto LIKE'%auto%'
GROUP BY (F.id_funcionario);

# INCOMPLETO!!!
select nome_produto
from produto_industrial
left join ordem_producao as O on O.id_produtoIndustrial = P.id_produtoIndustrial
where not in 

select nome_setor, (
    select AVG(salario_funcionario)
    from funcionario as F
    group by (nome_setor)
)
FROM setor
group by (nome_setor);

select nome_funcionario
from funcionario as F
where salario_funcionario > (
    select
)