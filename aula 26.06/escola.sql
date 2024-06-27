CREATE DATABASE db_escola

USE db_escola

CREATE TABLE tb_escola(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    genero VARCHAR(50)NOT NULL,
    idade int NOT NULL,
    turno VARCHAR(50) NOT NULL,
    nota DECIMAL(7,2) NOT NULL,
    PRIMARY KEY(id)
    );
    
    INSERT INTO tb_escola(nome, genero, idade, turno, nota)
    VALUE("pedro", "masculino", 13, "manhã", 6.0), 
    ("ana", "feminino", 14, "tarde", 7.5),
    ("joão", "masculino", 12, "noite", 8.0),
    ("maria", "feminino", 15, "manhã", 5.5),
    ("carlos", "masculino", 13, "tarde", 7.0),
    ("laura", "feminino", 14, "noite", 6.5),
    ("lucas", "masculino", 12, "manhã", 8.5),
    ("sofia", "feminino", 15, "tarde", 7.0);
    
    SELECT nome FROM tb_escola WHERE nota >= 7.0;
    
    SELECT nome FROM tb_escola WHERE nota <= 7.0;
    