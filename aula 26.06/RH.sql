CREATE DATABASE db_rh

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(50)NOT NULL,
    email VARCHAR(50) NOT NULL,
    turno VARCHAR(50) NOT NULL,
    salario DECIMAL(7,2) NOT NULL,
    PRIMARY KEY(id)
    );
    
    INSERT INTO tb_colaboradores(nome, cargo, email, turno, salario)
    VALUES("flavio", "gerente", "flaviocoutinho@hotmail.com", "manhã", 3450.00),
    ("lucas", "assistente", "lucasrosa@hotmail.com", "tarde", 2107.00),
    ("henrique","porteiro",  "henrique02@hotmail.com", "tarde", 1700.00),
    ("cristina", "manobrista", "cristinaluiza@hotmail.com", "noite", 1800.00),
    ("maria", "recepcionista", "mariaiza@hotmail.com", "manhã", 1650.00);
    
    SELECT nome FROM tb_colaboradores WHERE salario >= 2000.00;
    
    SELECT nome FROM tb_colaboradores WHERE salario <= 2000.00;
    
    
