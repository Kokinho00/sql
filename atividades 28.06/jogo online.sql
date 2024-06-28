CREATE DATABASE db_generation_games_online;

USE db_generation_games_online;


CREATE TABLE tb_classes(
	classes_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    regiao VARCHAR (50) NOT NULL,
    nome_da_classe VARCHAR(50) NOT NULL
    );



CREATE TABLE tb_personagens(
	personagens_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_de_ataque INT NOT NULL,
    poder_de_defesa INT NOT NULL,
    tipo_de_arma VARCHAR(50),
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(classes_id)
    );
    
    
    INSERT INTO tb_classes(regiao, nome_da_classe)
	VALUE("demacia", "atirador"),
    ("noxus", "suporte"),
    ("shurima", "selva"),
    ("zaun", "topo"),
    ("ionia", "meio");
    
    
    INSERT INTO tb_personagens(nome, poder_de_ataque, poder_de_defesa, tipo_de_arma, classe_id)
    VALUE("garen", 3000, 1500, "espada", 1),
    ("jinx", 3500, 1000, "arma de fogo", 4),
    ("janna", 1200, 2100, "cajado", 5),
    ("teemo", 1700, 900, "arma de fogo", 2),
    ("darius", 2700, 1600, "machado", 2),
    ("azir", 2700, 1200, "cajado", 3),
    ("renekton", 3000, 2100, "espada", 3),
    ("vi", 2450, 2000, "manopola", 4);
    
    SELECT * FROM tb_classes
    
    SELECT * FROM tb_personagens
    
    SELECT nome FROM tb_personagens WHERE poder_de_ataque > 2000;
    
    SELECT nome FROM tb_personagens WHERE poder_de_defesa BETWEEN 1000 AND 2000;
    
    SELECT nome FROM tb_personagens WHERE nome LIKE '%c%';
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.classes_id;
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.classes_id
    WHERE tb_classes.classes_id = 2;
    
    
    
    