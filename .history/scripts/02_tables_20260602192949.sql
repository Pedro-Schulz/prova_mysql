CREATE TABLE setor (
    id_setor SMALLINT PRIMARY KEY NOT NULL,
    nome_setor VARCHAR(100) NOT NULL,
    local_setor VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario (
    id_funcionario SMALLINT PRIMARY KEY NOT NULL,
    nome_funcionario VARCHAR(200),
    cargo_funcionario 
    cpf_funcionario
    salario_funcionario
    dataAdmissao_funcionario

    fk setor
);