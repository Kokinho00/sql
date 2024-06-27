CREATE DATABASE db_ecommerce

USE db_ecommerce

CREATE TABLE tb_ecommerce(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cor VARCHAR(50)NOT NULL,
    tamanho int NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    valor DECIMAL(7,2) NOT NULL,
    PRIMARY KEY(id)
    );
    
    INSERT INTO tb_ecommerce(nome, cor, tamanho, tipo, valor)
    VALUE("nike air force 01", "branco", 42, "casual", 800.00),
    ("puma disc", "azul", 40, "casual", 700.00),
    ("timberland","verde", 39, "casual", 500.00),
    ("adidas", "laranja", 38, "esportivo", 300.00),
    ("asics gel", "azul", 40, "esportivo", 250.00),
    ("all star classic", "preto", 39, "casual", 200.00),
    ("reebok", "verde", 38, "esportivo", 250.00),
    ("gucci", "verde", 37, "casual", 1200.00);
    
    SELECT nome FROM tb_ecommerce WHERE valor >= 500.00;
    
    SELECT nome FROM tb_ecommerce WHERE valor <= 500.00;
    