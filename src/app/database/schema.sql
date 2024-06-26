CREATE DATABASE Challenge;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE Users (
    id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    data_criacao TIMESTAMP WITH TIME ZONE DEFAULT timezone('America/Sao_Paulo'::TEXT, CURRENT_TIMESTAMP),
    ativo BOOLEAN DEFAULT true
);


CREATE TABLE Posts (
    id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
    titulo VARCHAR(100) NOT NULL,
    conteudo TEXT NOT NULL,
    autor_id UUID NOT NULL,
    data_criacao TIMESTAMP WITH TIME ZONE DEFAULT timezone('America/Sao_Paulo'::TEXT, CURRENT_TIMESTAMP),
    FOREIGN KEY (autor_id) REFERENCES Users(id)
);
