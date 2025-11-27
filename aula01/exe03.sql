CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos(
    id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
    idade INT,
    serie VARCHAR(20),
    media DECIMAL(4,2),
    turno VARCHAR(20)
);

INSERT INTO alunos (nome, idade, serie, media, turno) VALUES
('Ana Souza', 14, '8º ano', 7.8, 'Manhã'),
('João Pereira', 15, '9º ano', 8.5, 'Tarde'),
('Marina Costa', 13, '7º ano', 6.9, 'Manhã'),
('Lucas Martins', 16, '1º EM', 9.2, 'Noite'),
('Isabela Santos', 17, '2º EM', 7.3, 'Tarde'),
('Diego Martins', 16, '2º ano EM', 7.8, 'Noite'),
('Eduarda Lima', 12, '7º ano', 9.1, 'Manhã'),
('Felipe Rocha', 15, '1º ano EM', 5.4,'Tarde');

SELECT * FROM alunos WHERE media > 7.0;
SELECT * FROM alunos WHERE media < 7.0;

UPDATE alunos SET media = 8.5 WHERE id = 1;