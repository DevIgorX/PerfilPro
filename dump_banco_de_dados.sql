create database db_cadastro_pessoas;

CREATE TABLE pessoas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    data_nascimento DATE,
    genero VARCHAR(20),
    estado_civil VARCHAR(20),
    cidade VARCHAR(50),
    estado CHAR(2)
);


CREATE TABLE formacoes (
    id SERIAL PRIMARY KEY,
    pessoa_id INT REFERENCES pessoas(id) ON DELETE CASCADE,
    nivel VARCHAR(50),
    curso VARCHAR(100),
    instituicao VARCHAR(100),
    ano_conclusao INT
);


CREATE TABLE experiencias_profissionais (
    id SERIAL PRIMARY KEY,
    pessoa_id INT REFERENCES pessoas(id) ON DELETE CASCADE,
    empresa VARCHAR(100),
    cargo VARCHAR(100),
    data_inicio DATE,
    data_fim DATE,
    descricao TEXT
);


CREATE TABLE habilidades (
    id SERIAL PRIMARY KEY,
    pessoa_id INT REFERENCES pessoas(id) ON DELETE CASCADE,
    descricao VARCHAR(100),
    nivel VARCHAR(30)  -- Ex: Básico, Intermediário, Avançado
);

CREATE TABLE idiomas (
    id SERIAL PRIMARY KEY,
    pessoa_id INT REFERENCES pessoas(id) ON DELETE CASCADE,
    idioma VARCHAR(50),
    nivel VARCHAR(30)
);
