CREATE TABLE person(
    cpf VARCHAR(11) NOT NULL UNIQUE,
    nome VARCHAR(75) NOT NULL,
    sex CHAR(1) CHECK (sex IN('M, F')), -- Restrição de Domínio
    PRIMARY KEY (cpf)
);