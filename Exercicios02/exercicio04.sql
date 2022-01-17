CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(20) NOT NULL,
`status` VARCHAR(30) NOT NULL
);

CREATE TABLE tb_produtos(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(35) NOT NULL,
criado VARCHAR(30) NOT NULL,
fragilidade BOOLEAN NOT NULL,
descricao VARCHAR(255) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(categoria, `status`)
VALUES ("Legumes", "Indisponivel"),
	   ("Fruta", "Disponivel"),
       ("Legumes", "Disponivel"),
       ("Verdura", "Indisponivel"),
       ("Fruta", "Disponivel");

INSERT INTO tb_produtos(nome, criado,fragilidade,descricao,valor , id_categoria)
VALUES ("Manga", "01/01/2022", FALSE, "Direto de minas", 8.60, 1),
	   ("Abacaxi", "16/01/2022", FALSE, "Direto da Bahia", 30.00, 2,
       ("Machichi", "11/01/2022", TRUE, "Direto da Bahia", 20.00, 5),
       ("Couve", "15/01/2022", FALSE, "Direto de São Paulo", 39.50, 4),
       ("Banana", "11/01/2022", TRUE, "Direto da Bahia", 30.00, 3),
       ("cebola", "14/01/2022", FALSE, "Direto de São Paulo", 50.50, 3),
       ("Couve", "17/01/2022", TRUE, "Direto da Bahia", 55.80, 3),
       ("Batata", "14/01/2022", TRUE, "Direto de minas", 15.50, 5);

SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor >= 3 AND valor <= 60;

SELECT * FROM tb_produtos
WHERE nome LIKE "%c%";

SELECT tb_produtos.nome AS Produto, tb_produtos.valor AS Preco,
tb_categoria.nome AS Nome, tb_categoria.categoria AS Categoria
FROM tb_categoria
INNER JOIN tb_produtos
ON tb_produtos.id_produto = tb_categoria.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categoria = 1;