CREATE TABLE setor (
    id_setor SMALLINT PRIMARY KEY NOT NULL,
    nome_setor VARCHAR(100) NOT NULL,
    local_setor VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario (
    id_funcionario SMALLINT PRIMARY KEY NOT NULL,
    nome_funcionario VARCHAR(200),
    cargo_funcionario VARCHAR(50),
    cpf_funcionario CHAR(11) UNIQUE NOT NULL,
    salario_funcionario DECIMAL(10, 2) NOT NULL
    dataAdmissao_funcionario DATE,


    FOREIGN KEY(id_setor) REFERENCES setor(id)
);