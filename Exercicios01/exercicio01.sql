-- Criando banco de dados
CREATE DATABASE db_RH;

-- Selecionar o banco de dados para uso
USE db_RH;

-- Criando Tabela
CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT UNIQUE,
    nome VARCHAR (255) NOT NULL,
    cpf VARCHAR (11),
    telefone VARCHAR (9),
    salario DECIMAL (10,2),
    idade INT,
	PRIMARY KEY (id)
);

-- Inserindo valores na tabela
INSERT INTO tb_funcionarios (nome, cpf, telefone, salario, idade) 
	VALUES ("Daniel Reis", "12345612345", "948556715", 4.000, 28);
INSERT INTO tb_funcionarios (nome, cpf, telefone, salario, idade) 
	VALUES ("Valeria Santos", "45612378989", "955178864", 3.000, 33);
INSERT INTO tb_funcionarios (nome, cpf, telefone, salario, idade) 
	VALUES ("Luis Melin", "78945612356", "960805577", 3.000, 35);
INSERT INTO tb_funcionarios (nome, cpf, telefone, salario, idade) 
	VALUES ("Deivan Lopes", "32145678968", "988995577", 2.500, 30);
INSERT INTO tb_funcionarios (nome, cpf, telefone, salario, idade) 
	VALUES ("Higor Matos", "98765432198", "987896321", 4.000, 27);

-- Alterando a estrutura da tabela 
ALTER TABLE tb_funcionarios MODIFY nome VARCHAR (100);
ALTER TABLE tb_funcionarios MODIFY salario FLOAT;

-- Visualizando a Tabela
SELECT * FROM tb_funcionarios;

-- Mostrando as pessoas com o salario maior que 2000
SELECT * FROM tb_funcionarios WHERE salario > 2.000;

-- Mostrando as pessoas com o salario menor que 2000
SELECT * FROM tb_funcionarios WHERE salario < 2.000;

-- Atualizando um dado da tabela 

UPDATE tb_funcionarios SET salario = 1.500 WHERE id = 3;