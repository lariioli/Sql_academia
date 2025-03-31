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

INSERT INTO alunos (nome, telefone) VALUES
("Carlos Silva", "11999998888"),
("Mariana Souza", "11988887777"),
("Lucas Lima", "11977776666"),
("Fernanda Alves", "11966665555"),
("João Pedro", "11955554444");

INSERT INTO planos (nome, preco_mensal) VALUES
("Mensal", 100.00),
("Trimestral", 270.00),
("Semestral", 500.00),
("Anual", 900.00);

INSERT INTO matriculas (id_aluno, id_plano, data_inicio) VALUES
(1, 1, '2025-03-01'),
(2, 2, '2025-03-05'),
(3, 3, '2025-03-10'),
(4, 4, '2025-03-12'),
(5, 1, '2025-03-15');

INSERT INTO aulas (nome, horario) VALUES
("Musculação", "07:00:00"),
("Yoga", "08:30:00"),
("Spinning", "18:00:00"),
("Crossfit", "19:30:00"),
("Pilates", "20:00:00");

INSERT INTO presencas (id_aluno, id_aula, data) VALUES
(1, 1, '2025-03-20'),
(2, 2, '2025-03-21'),
(3, 3, '2025-03-22'),
(4, 4, '2025-03-23'),
(5, 5, '2025-03-24');

UPDATE alunos SET telefone = "11933445566" WHERE id = 3;
UPDATE alunos SET telefone = "11977889900" WHERE id = 5;

DELETE FROM presencas WHERE id_aluno = 3 AND id_aula = 5;
DELETE FROM presencas WHERE id_aluno = 2 AND id_aula = 2;



