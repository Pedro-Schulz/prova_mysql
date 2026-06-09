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

select id_setor from setor;
INSERT INTO funcionario (id_funcionario, nome_funcionario, cargo_funcionario, cpf_funcionario, salario_funcionario, id_setor) VALUES
    (default, 'Pablo', 'Gerente', 12335455657, 1200, 1),
    (default, 'Romario', 'Operador', 22335455657, 3200, 123),
    (default, 'Estevao', 'Zelador', 32335455657, 10000, 123),
    (default, 'Diego', 'Administrador', 42335455657, 7200, 123),
    (default, 'Rogerio', 'Diretor', 52335455657, 11200, 123),
    (default, 'Homologo', 'Gerente', 62335455657, 1200, 123),
    (default, 'Lorabelta', 'Operador', 72335455657, 3200, 123),
    (default, 'Viranldo', 'Zelador', 82335455657, 10000, 123),
    (default, 'lindoberto', 'Administrador', 92335455657, 7200, 123),
    (default, 'Tutaco', 'Diretor', 12335455658, 11200, 123);

INSERT INTO ordem_producao (id_op, dataProducao_op, qtdProduzido_op, status_op, tempoEstimado_op,  tempoReal_op, id_funcionario, id_produtoIndustrial) VALUES
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Em andamento', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Concluído', '80:12:34', '70:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Concluído', '15:12:34', '10:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '60:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Em andamento', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Concluído', '80:12:34', '70:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Concluído', '15:12:34', '10:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 523, 3456),
    (default, '1000-01-01', 123, 'Concluído', '20:12:34', '60:12:34', 523, 3456);

INSERT INTO produto_industrial (id_produtoIndustrial, nome_produto, descricao_produto, precoFabricacao_produto, qtdEstoque_produto, categoria_produto, id_fornecedor) VALUES
    (3450, 'laranja', 'podre', 2.99, 123, 'frutas', 134),
    (3447, 'tomate', 'podre', 2.99, 123, 'frutas', 134),
    (3429, 'pera', 'podre', 2.99, 123, 'frutas', 134),
    (3412, 'laranja', 'podre', 2.99, 123, 'frutas', 134),
    (3465, 'laranja', 'podre', 2.99, 123, 'frutas', 134),
    (3496, 'laranja', 'podre', 2.99, 123, 'frutas', 134),
    (3487, 'motor', 'industrial', 2.99, 123, 'frutas', 134),
    (3448, 'laranja', 'podre', 2.99, 124, 'frutas', 134),
    (3413, 'laranja', 'podre', 2.99, 134, 'frutas', 134),
    (3416, 'melancia', 'podre', 2.99, 234, 'frutas', 134),
    (3426, 'laranja', 'podre', 2.99, 234, 'frutas', 134),
    (3436, 'laranja', 'podre', 2.99, 234, 'frutas', 134),
    (3446, 'pistao', 'metal', 2.99, 234, 'frutas', 134),
    (1235, 'laranja', 'podre', 2.99, 123, 'frutas', 134),
    (3466, 'laranja', 'podre', 2.99, 124, 'frutas', 134),
    (3476, 'abacate', 'podre', 2.99, 134, 'frutas', 134);

INSERT INTO fornecedor (id_fornecedor, cnpj_fornecedor, telefone_fornecedor, cidade_fornecedor) VALUES
    (134, 35412, 1243123451234, 'São Paulo'),
    (456, 35422, 1243123451234, 'Guarulhos'),
    (124, 35432, 1243123451234, 'Manaus'),
    (125, 35442, 1243123451234, 'São Paulo'),
    (126, 35452, 1243123451234, 'São Paulo'),
    (127, 35462, 1243123451234, 'Belo Horizonte'),
    (128, 35472, 1243123451234, 'São Paulo'),
    (129, 35482, 1243123451234, 'Rio de Janeiro'),
    (131, 35492, 1243123451234, 'São Paulo'),
    (143, 35152, 1243123451234, 'São Paulo'),
    (153, 35252, 1243123451234, 'São Paulo');