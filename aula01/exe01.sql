CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_contratacao DATE NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

INSERT INTO colaboradores (nome, cargo, salario, data_contratacao, departamento)
VALUES
("Cíntia Mendes","Analista de RH",3500.00,"2021-03-10","Recursos Humanos"),
("Marcos Oliveira","Assistente Administrativo",2500.00,"2020-11-01","Administrativo"),
("Antonela Lambrini","Estágiario em Suporte Técnico",1500.00,"2022-08-15","Tecnologia"),
("João Pereira", "Gerente de Projetos", 7200.00, "2019-05-22", "Projetos"),
("Sofia Torres", "Designer UX", 4600.00, "2023-02-05", "Tecnologia");

SELECT * FROM colaboradores;
SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 2000 WHERE id = 3;