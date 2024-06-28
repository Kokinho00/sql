CREATE DATABASE db_pizzaria_legal

USE db_pizzaria_legal

CREATE TABLE tb_categorias(
	categorias_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tamanho VARCHAR (50) NOT NULL,
    tipo VARCHAR(50) NOT NULL
    );
    
    CREATE TABLE tb_pizzas(
    pizza_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) NOT NULL,
    borda VARCHAR(50) NOT NULL,
    valor DECIMAL (5,2) NOT NULL,
    formato VARCHAR(50) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categorias_id)
    );
    
    INSERT INTO tb_categorias(tamanho, tipo)
    VALUES("grande", "salgada"),
    ("média", "salgada"),
    ("pequena", "doce"),
    ("pequena", "salgada"),
    ("grande", "doce");
    
    INSERT INTO tb_pizzas(nome, borda, valor, formato, categoria_id)
    VALUES("mussarela", "tradicional", 45.00, "redonda", 1),
    ("brigadeiro", "recheada", 60.00, "quadrada", 3),
    ("calabresa", "recheada", 50.00, "redonda", 2),
    ("frango", "tradicional", 65.00, "redonda", 1),
    ("morango com chocolate", "recheada", 80.00, "quadrada", 5),
    ("pepperoni", "tradicional", 70.00, "redonda", 1),
    ("frango com milho", "recheada", 65.00, "redonda", 1),
    ("chocolate", "recheada", 30.00, "quadrada", 3);
    
    SELECT nome FROM tb_pizzas WHERE valor > 45.00;
    
    SELECT nome FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;
    
    SELECT nome FROM tb_pizzas WHERE nome LIKE '%m%';
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_pizzas.categoria_id = tb_categorias.categorias_id;
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_pizzas.categoria_id = tb_categorias.categorias_id;
    WHERE  tb_categorias.categorias_id = 1;
    