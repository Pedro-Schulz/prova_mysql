INSERT INTO setor (id_setor, nome_setor, local_setor) VALUES
    (123, 'Ferramentaria', 'Saguao'),
    (456, 'TI', 'Prédio leste'),
    (789, 'Usinagem', 'Estacao noroeste'),
    (143, 'Tornearia', 'Portaria 20'),
    (345, 'Bobinagem', 'Prédio 8');



INSERT INTO funcionario (id_funcionario, nome_funcionario, cargo_funcionario, cpf_funcionario, salario_funcionario, id_setor) VALUES
    (123, 'Pablo', 'Gerente', 12334455657, 1200, 123),
    (345, 'Romario', 'Operador', 23567645686, 3200, 456),
    (572, 'Estevao', 'Zelador', 12334567657, 10000, 789),
    (341, 'Diego', 'Administrador', 12333455657, 7200, 143),
    (673, 'Rogerio', 'Diretor', 11334455657, 11200, 345),
    (123, 'Homologo', 'Gerente', 12334455657, 1200, 123),
    (345, 'Lorabelta', 'Operador', 23567645686, 3200, 456),
    (572, 'Viranldo', 'Zelador', 123345677657, 10000, 789),
    (341, 'lindoberto', 'Administrador', 12333455657, 7200, 143),
    (673, 'Tutaco', 'Diretor', 11334455657, 11200, 345);

INSERT INTO ordem_producao (id_op, dataProducao_op, qtdProduzido_op, status_op, tempoEstimado_op,  tempoReal_op, id_funcionario, id_produtoIndustrial) VALUES
(4345, '1000-01-01', 123, 'Concluído', '20:12:34', '30:12:34', 123, 3456),
(1234, '1000-01-01', 123, 'Em andamento', '20:12:34', '30:12:34', 123, 3456),
(4612, '1000-01-01', 123, 'Concluído', '80:12:34', '70:12:34', 123, 3456),
(8589, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 123, 3456),
(2451, '1000-01-01', 123, 'Concluído', '15:12:34', '10:12:34', 123, 3456),
(9963, '1000-01-01', 123, 'Finalizado', '20:12:34', '30:12:34', 123, 3456),
(1436, '1000-01-01', 123, 'Concluído', '20:12:34', '60:12:34', 123, 3456),


INSERT INTO produto_industrial (id_produtoIndustrial, nome_produto, descricao_produto, precoFabricacao_produto, qtdEstoque_produto, categoria_produto, id_fornecedor) VALUES
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
(3456, 'laranja', 'podre', 2.99, 1234, 'frutas', 123),
