CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- TABELA CLASSES
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ataque_base INT NOT NULL,
    defesa_base INT NOT NULL
);
INSERT INTO tb_classes (nome, ataque_base, defesa_base) VALUES
("Guerreiro", 150, 120),
("Mago", 200, 80),
("Arqueiro", 170, 100),
("Assassino", 220, 70),
("Cavaleiro", 140, 180);

-- TABELA PERSONAGENS
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
("Vecna", 50, 5000, 3000, 2),        
("Selene", 18, 300, 80, 4),          
("Thalon", 15, 200, 110, 3),         
("Morgana", 25, 3500, 1000, 2),      
("Eldric", 10, 120, 2000, 5),        
("Varus", 22, 270, 140, 1),          
("Aeron", 12, 180, 120, 1),          
("Kael", 17, 210, 105, 3);  

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%" OR nome LIKE "%C%"; 
SELECT p.nome AS Personagem,
       p.nivel,
       p.poder_ataque,
       p.poder_defesa,
       c.nome AS Classe
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id;

SELECT p.nome AS Personagem,
       p.nivel,
       p.poder_ataque,
       p.poder_defesa,
       c.nome AS Classe
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id
WHERE c.nome = "Mago";

