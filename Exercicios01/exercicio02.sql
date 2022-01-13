-- Criando banco de dados
CREATE DATABASE db_Loja_Virtual;

-- Selecionar o banco de dados para uso
USE db_Loja_Virtual;

-- Criando Tabela
CREATE TABLE tb_produtos(
id_produto BIGINT AUTO_INCREMENT UNIQUE,
nome VARCHAR(45) NOT NULL,
preco DECIMAL (10,2) NOT NULL,
marca VARCHAR (45) NOT NULL,
design VARCHAR (25),
origem VARCHAR (25),

PRIMARY KEY (id_produto)
);

-- Inserindo valores na tabela
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Tennis", 249.99, "Olympikus", "Esportivo", "USA");
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Calça", 89.99, "Biotipo", "Jeans", "Brazil");
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Tennis", 999.99, "Mizuno", "Esportivo", "China");
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Camisa", 79.99, "Fatal Surf", "Dia a Dia", "Brazil");
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Katana", 659.99, "Shisui", "Caça", "Japan");    
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Carro", 54999.99, "Sportage", "Passeio", "South Korea");
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Carro", 100000.99, "BMW", "Sport", "German");
INSERT INTO tb_produtos (nome, preco, marca, design, origem)
	VALUES ("Tennis", 500.99, "Nike", "Sport", "USA");
    

-- Visualizando a Tabela
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

-- Atualizando um dado da tabela 

UPDATE tb_produtos SET preco = 299.99 WHERE id_produto = 8;
