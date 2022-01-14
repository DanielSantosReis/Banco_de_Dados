-- Criando um Banco de dados 
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game Online.
CREATE TABLE tb_categorias (
	id_categoria INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    adicional VARCHAR(255) NOT NULL,
    tipoDeVenda VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_categoria)
);


-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça decriar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_pizza (
	id_pizza INT NOT NULL AUTO_INCREMENT,
    categoria_id INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tamanho DECIMAL (10,2) NOT NULL,
    tempoPreparo DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id_categoria)
);


-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categorias (nome, adicional, tipoDeVenda) VALUES ("Salgada", "Não", "Entrega");
INSERT INTO tb_categorias (nome, adicional, tipoDeVenda) VALUES ("Doce", "Sim , banana", "Entrega");
INSERT INTO tb_categorias (nome, adicional, tipoDeVenda) VALUES ("Queijo", "Sim , ovo", "Presencial");
INSERT INTO tb_categorias (nome, adicional, tipoDeVenda) VALUES ("Peixe", "Sim , queijo", "Entrega");
INSERT INTO tb_categorias (nome, adicional, tipoDeVenda) VALUES ("Salada", "Não", "Presencial");

-- Popule esta tabela pizza com até 8 dados.
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("2", "M&M", "35.00", "35.00", "30");
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("2", "Morango", "35.00", "35.00", "25");
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("1", "Carne Seca", "50.00", "35.00", "35");
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("1", "Mussarela", "30.00", "35.00", "45");
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("1", "Calabresa", "30.00", "35.00", "20");
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("3", "3 Queijos", "55.00", "35.00", "20");
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("4", "Atum", "45.00", "35.00", "30");
INSERT INTO tb_pizza (categoria_id, nome, valor, tamanho, tempoPreparo) VALUES ("5", "Completa", "60.00", "35.00", "50");


-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM db_pizzaria_legal.tb_pizza
WHERE tb_pizza.valor >= 45;


-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
SELECT * FROM db_pizzaria_legal.tb_pizza
WHERE tb_pizza.valor >= 29
AND tb_pizza.valor <= 60;


-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT *
FROM db_pizzaria_legal.tb_pizza
WHERE tb_pizza.nome
LIKE 'c%';


-- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_categoria
	INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.categoria_id;


-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
SELECT * FROM tb_categoria
	WHERE tb_categoria.nome LIKE "%Doce%";