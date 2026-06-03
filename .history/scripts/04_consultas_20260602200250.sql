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
WHERE dataAdmissao_funcionario 

SELECT nome_produto
FROM produto_industrial
WHERE qtdEstoque_produto > 100;

SELECT id_fornecedor
FROM fornecedor
WHERE cidade_fornecedor = "São Paulo";

SELECT nome_produto
FROM produto_industrial
