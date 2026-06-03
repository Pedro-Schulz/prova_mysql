CREATE TABLE setor (
    id_setor SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_setor VARCHAR(100) NOT NULL,
    local_setor VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario (
    id_funcionario SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_funcionario VARCHAR(200),
    cargo_funcionario VARCHAR(50),
    cpf_funcionario CHAR(11) UNIQUE NOT NULL,
    salario_funcionario DECIMAL(10, 2) NOT NULL,
    dataAdmissao_funcionario DATE,
    id_setor SMALLINT NOT NULL UNIQUE,

    FOREIGN KEY(id_setor) REFERENCES setor(id_setor)
);

CREATE TABLE ordem_producao (
    id_op SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dataProducao_op DATE NOT NULL,
    qtdProduzido_op SMALLINT NOT NULL,
    status_op VARCHAR(50),
    tempoEstimado_op TIME,
    tempoReal_op TIME NOT NULL,
    id_funcionario SMALLINT NOT NULL,
    id_produtoIndustrial SMALLINT NOT NULL,

    FOREIGN KEY(id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY(id_produtoIndustrial) REFERENCES produto_industrial(id_produtoIndustrial)
);

CREATE TABLE produto_industrial (
    id_produtoIndustrial SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    descricao_produto TEXT,
    precoFabricacao_produto DECIMAL(10, 2),
    qtdEstoque_produto TINYINT NOT NULL,
    categoria_produto VARCHAR(50) NOT NULL,
    id_fornecedor SMALLINT NOT NULL UNIQUE,

    FOREIGN KEY(id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

CREATE TABLE fornecedor (
    id_fornecedor
    
);