CREATE TYPE tipo_usuario AS ENUM ('admin', 'funcionario');

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    usuario VARCHAR(100) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL,
    tipo tipo_usuario DEFAULT 'funcionario',
    ativo BOOLEAN DEFAULT true
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    observacao VARCHAR(300) 
);

CREATE TYPE status_processo AS ENUM ('pendente', 'andamento', 'concluido', 'cancelado');

CREATE TABLE servicos (
    id SERIAL PRIMARY KEY,
    endereco VARCHAR(150) NOT NULL,
    data_agendada DATE,
    horario_agendado TIME,
    status status_processo DEFAULT 'pendente',
    cliente_id INT NOT NULL,

    CONSTRAINT cliente_servico
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(id),

    preco_estimado NUMERIC(10,2),
    preco_final NUMERIC(10,2),
    data_solicitacao TIMESTAMPTZ DEFAULT NOW(),
    observacao_extra VARCHAR(150),
    motivo_cancelamento VARCHAR(150)
);

CREATE TABLE servico_funcionario (
    servico_id INT NOT NULL,
    
    CONSTRAINT fk_servico
        FOREIGN KEY (servico_id)
        REFERENCES servicos(id),
    
    funcionario_id INT NOT NULL,

    CONSTRAINT fk_funcionario
        FOREIGN KEY (funcionario_id)
        REFERENCES usuarios(id),

    CONSTRAINT uk_regra UNIQUE (servico_id, funcionario_id),

    ativo BOOLEAN NOT NULL DEFAULT true
);

CREATE TABLE observacoes (
    id SERIAL PRIMARY KEY,
    servico_id INT NOT NULL,
    
    CONSTRAINT fk_servico
        FOREIGN KEY (servico_id)
        REFERENCES servicos(id),

    autor_id INT NOT NULL,

    CONSTRAINT fk_autor
        FOREIGN KEY (autor_id)
        REFERENCES usuarios(id),

    texto VARCHAR(200) NOT NULL,

    data_hora TIMESTAMPTZ NOT NULL DEFAULT NOW()
    
);
