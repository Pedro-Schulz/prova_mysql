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

SELECT nome_funcionario, S.nome_setor
FROM 

SELECT nome_produto, categoria_produto
FROM produto_industrial;

SELECT nome_produto, precoFabricacao_produto, id_fornecedor
FROM produto_industrial;

SELECT nome_funcionario, salario_funcionario
FROM funcionario
WHERE salario_funcionario > (
    SELECT AVG(salario_funcionario)
    FROM funcionario
);