INSERT INTO setor (id_setor, nome_setor, local_setor) VALUES
    (default, 'Fuzilagem', 'Saguao'),
    (default, 'TI', 'Prédio leste'),
    (default, 'Usinagem', 'Estacao noroeste'),
    (default, 'Tornearia', 'Portaria 20'),
    (default, 'Bobinagem', 'Prédio 8'),
    (default, 'Solda', 'Saguao'),
    (default, 'TI', 'Prédio leste'),
    (default, 'Usinagem', 'Estacao noroeste'),
    (default, 'Tornearia', 'Portaria 20'),
    (default, 'Bobinagem', 'Prédio 8');

INSERT INTO funcionario (id_funcionario, nome_funcionario, cargo_funcionario, cpf_funcionario, salario_funcionario, id_setor) VALUES
    (default, 'Pablo', 'Gerente', 12335455657, 1200, 1),
    (default, 'Romario', 'Operador', 22335455657, 3200, 2),
    (default, 'Estevao', 'Zelador', 32335455657, 10000, 3),
    (default, 'Diego', 'Administrador', 42335455657, 7200, 4),
    (default, 'Rogerio', 'Diretor', 52335455657, 11200, 5),
    (default, 'Homologo', 'Gerente', 62335455657, 1200, 6),
    (default, 'Lorabelta', 'Operador', 72335455657, 3200, 7),
    (default, 'Viranldo', 'Zelador', 82335455657, 10000, 8),
    (default, 'lindoberto', 'Administrador', 92335455657, 7200, 9),
    (default, 'Tutaco', 'Diretor', 12335455658, 11200, 10);

INSERT INTO ordem_producao (id_op, dataProducao_op, qtdProduzido_op, status_op, tempoEstimado_op,  tempoReal_op, id_funcionario, id_produtoIndustrial) VALUES
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '30:12:34', 1, 1),
    (default, '1000-01-01', 123, 'Em andamento', '20:12:34', '30:12:34', 2, 2),
    (default, '1000-01-01', 123, 'Concluído', '80:12:34', '70:12:34', 3, 3),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 4, 4),
    (default, '1000-01-01', 123, 'Concluído', '15:12:34', '10:12:34', 5, 5),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 6, 6),
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '60:12:34', 7, 7),
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '30:12:34', 8, 8),
    (default, '1000-01-01', 123, 'Em andamento', '20:12:34', '30:12:34', 1, 1),
    (default, '1000-01-01', 123, 'Concluído', '80:12:34', '70:12:34', 10, 10),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 9, 9),
    (default, '1000-01-01', 123, 'Concluído', '15:12:34', '10:12:34', 6, 6),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 5, 5),
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '60:12:34', 4, 4);

INSERT INTO produto_industrial (id_produtoIndustrial, nome_produto, descricao_produto, precoFabricacao_produto, qtdEstoque_produto, categoria_produto, id_fornecedor) VALUES
    (default, 'laranja', 'podre', 2.99, 123, 'frutas', 1),
    (default, 'tomate', 'podre', 2.99, 123, 'frutas', 2),
    (default, 'pera', 'podre', 2.99, 123, 'frutas', 3),
    (default, 'laranja', 'podre', 2.99, 123, 'frutas', 4),
    (default, 'laranja', 'podre', 2.99, 123, 'frutas', 5),
    (default, 'laranja', 'podre', 2.99, 123, 'frutas', 6),
    (default, 'motor', 'industrial', 2.99, 123, 'frutas', 7),
    (default, 'laranja', 'podre', 2.99, 124, 'frutas', 8),
    (default, 'laranja', 'podre', 2.99, 134, 'frutas', 9),
    (default, 'melancia', 'podre', 2.99, 234, 'frutas', 10),
    (default, 'laranja', 'podre', 2.99, 234, 'frutas', 1),
    (default, 'laranja', 'podre', 2.99, 234, 'frutas', 2),
    (default, 'pistao', 'metal', 2.99, 234, 'frutas', 3),
    (default, 'laranja', 'podre', 2.99, 123, 'frutas', 4),
    (default, 'laranja', 'podre', 2.99, 124, 'frutas', 5),
    (default, 'abacate', 'podre', 2.99, 134, 'frutas', 6);

INSERT INTO fornecedor (id_fornecedor, cnpj_fornecedor, telefone_fornecedor, cidade_fornecedor) VALUES
    (default, 12345, 1243123451234, 'São Paulo'),
    (default, 12345, 1243123451234, 'Guarulhos'),
    (default, 35432, 1243123451234, 'Manaus'),
    (default, 35442, 1243123451234, 'São Paulo'),
    (default, 35452, 1243123451234, 'São Paulo'),
    (default, 35462, 1243123451234, 'Belo Horizonte'),
    (default, 35472, 1243123451234, 'São Paulo'),
    (default, 35482, 1243123451234, 'Rio de Janeiro'),
    (default, 35492, 1243123451234, 'São Paulo'),
    (default, 35152, 1243123451234, 'São Paulo'),
    (default, 35252, 1243123451234, 'São Paulo');
    select id_fornecedor from fornecedor;