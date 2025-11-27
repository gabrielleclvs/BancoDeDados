CREATE DATABASE ecommerce_livros;
USE ecommerce_livros;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10,2),
    categoria VARCHAR(50)
);

INSERT INTO produtos (titulo, autor, preco, categoria) VALUES
('Dom Casmurro', 'Machado de Assis', 45.90, 'Clássico'),
('O Hobbit', 'J.R.R. Tolkien', 89.50, 'Fantasia'),
('1984', 'George Orwell', 39.90, 'Distopia'),
('A Revolução dos Bichos', 'George Orwell', 29.90, 'Distopia'),
('Povo Brasileiro', 'Darcy Ribeiro', 120.00, 'Sociologia'),
('Sapiens', 'Yuval Noah Harari', 69.90, 'História'),
('A Dança da Morte', 'Stephen King', 599.00, 'Terror'),
('It: A Coisa', 'Stephen King', 749.00, 'Terror');

SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 480.00 WHERE id = 2;