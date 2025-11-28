CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Medicamentos", "Produtos destinados a tratamento de doenças"),
("Higiene", "Produtos de higiene pessoal"),
("Cosméticos", "Produtos estéticos e cuidados com a pele"),
("Vitaminas", "Suplementos vitamínicos"),
("Infantil", "Produtos destinados ao cuidado infantil");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, categoria_id) VALUES
("Dipirona", "Analgésico 500mg", 12.50, 100, 1),
("Ibuprofeno", "Anti-inflamatório 200mg", 18.00, 80, 1),
("Shampoo Anticaspa", "Controle de oleosidade", 32.90, 50, 2),
("Creme Hidratante", "Hidratante corporal 200ml", 45.00, 40, 3),
("Vitamina C", "Suplemento de vitamina C 500mg", 55.00, 60, 4),
("Protetor Solar FPS 50", "Proteção UVA/UVB", 68.00, 30, 3),
("Fralda Infantil", "Tamanho G com 20 unidades", 35.00, 70, 5),
("Escova Dental", "Escova macia infantil", 8.90, 100, 5);

SELECT * FROM td_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%" OR nome LIKE "%C%";
SELECT p.nome AS Produto,
       p.preco,
       c.nome AS Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.nome AS Produto,
       p.preco,
       c.nome AS Categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.nome = "Cosméticos";
