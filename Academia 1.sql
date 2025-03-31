CREATE DATABASE Academia;
USE Academia;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE planos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco_mensal DECIMAL(10,2) NOT NULL
);

CREATE TABLE matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_plano INT,
    data_inicio DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_plano) REFERENCES planos(id)
);

CREATE TABLE aulas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    horario TIME NOT NULL
);

CREATE TABLE presencas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_aula INT,
    data DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_aula) REFERENCES aulas(id) 
);

