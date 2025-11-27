CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);
INSERT INTO tb_categorias (nome, descricao) VALUES
("Tradicional", "Pizzas salgadas clássicas"),
("Especial", "Pizzas premium ou ingredientes diferenciados"),
("Doce", "Pizzas com ingredientes doces"),
("Vegana", "Pizzas sem ingredientes de origem animal"),
("Light", "Pizzas mais leves e saudáveis");

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_pizzas (nome, ingredientes, tamanho, preco, categoria_id) VALUES
("Margherita", "Tomate, Mussarela, Manjericão", "Grande", 42.00, 1),
("Calabresa", "Calabresa, Cebola, Mussarela", "Média", 48.00, 1),
("Quatro Queijos", "Mussarela, Gorgonzola, Parmesão, Provolone", "Grande", 55.00, 2),
("Chocolate", "Chocolate ao leite", "Grande", 60.00, 3),
("Morango com Nutella", "Nutella e morangos frescos", "Grande", 75.00, 3),
("Veggie", "Legumes variados, molho de tomate", "Média", 50.00, 4),
("Frango Light", "Frango desfiado, catupiry light", "Média", 45.00, 5),
("Pepperoni Especial", "Pepperoni, queijo, molho artesanal", "Grande", 65.00, 2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%" OR nome LIKE "%M%";
SELECT p.nome AS Pizza,
       p.preco,
       c.nome AS Categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.nome AS Pizza,
       p.preco,
       c.nome AS Categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.nome = "Doce";