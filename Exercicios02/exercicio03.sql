CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categorias(
id_categoria BIGINT AUTO_INCREMENT UNIQUE,
nome VARCHAR(100),
descricao VARCHAR(100),
estoque INT NOT NULL,
PRIMARY KEY (id_categoria)
);		

CREATE TABLE tb_produtos(
id_produto BIGINT AUTO_INCREMENT UNIQUE,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(100) NOT NULL,
criado DATE,
preco DECIMAL(10,2) NOT NULL,
fk_categoria INT,
PRIMARY KEY (id_produto),	
FOREIGN KEY (fk_categoria) REFERENCES tb_categorias (id_categoria)	
);
drop table tb_categorias;

INSERT INTO tb_categoria(nome, descricao, estoque)
	VALUES ("cosméticos", "Condicionador", 50),
		   ("remédio", "Aspirina", 35),
           ("cosméticos", "Shampoo", 100),
           ("cosméticos", "Máscara Facial", 66),
           ("remédio", "Lacto Purga", 38);
           
INSERT INTO tb_produtos(nome, descricao, criado, preco, fk_categoria)
	VALUES ("Pallmolive", "500g", "10/01/2022", 50.99, 1),("Anador", "90g", "05/01/2022", 41.99, 2),("Pallmolive", "500g", "10/01/2022", 60.99, 3),
           ("Fraitc", "70g", "11/01/2022", 21.99, 4),("Dove", "100g", "13/11/2021", 55,99, 1),("Dove", "100g", "10/11/2021", 60.99, 3),
           ("Purgante", "70g", "10/10/2021", 9.99, 5),("Biroasol", "50g", "11/11/2021", 10.99, 2);

SELECT * FROM tb_produtos
WHERE preco > 50;

SELECT * FROM tb_produtos
WHERE preco >= 3 AND valor <= 60;

SELECT * FROM tb_produtos
WHERE nome LIKE "%b%";

SELECT tb_produtos.nome AS Produto, tb_produtos.descricao AS Descricao,
tb_categorias.nome AS Nome, tb_categorias.descricao AS Descricao
FROM tb_categorias
INNER JOIN tb_produtos
ON tb_produtos.id_produto = tb_categorias.fk_categoria;

SELECT * FROM tb_produtos
WHERE id_categoria = 2;