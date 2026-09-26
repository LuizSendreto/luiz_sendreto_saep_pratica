CREATE DATABASE banco_exemplo;

USE banco_exemplo;

CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE reposicao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    funcionario_id INT NOT NULL,
    medicamento VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    urgencia VARCHAR(10) NOT NULL,
    dia DATE NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'solicitado',

    FOREIGN KEY (funcionario_id) REFERENCES funcionario(id)
);