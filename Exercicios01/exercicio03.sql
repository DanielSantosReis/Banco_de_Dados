-- Criando o Banco de dados
CREATE DATABASE db_escola;

-- Selecionando o banco de dados
USE db_escola;

-- Criação da tabela
CREATE TABLE tb_alunos (
id_aluno INT AUTO_INCREMENT,
nome VARCHAR (80) NOT NULL,
rg VARCHAR (9) NOT NULL,
disciplina VARCHAR (25) NOT NULL,
nota INT (2) NOT NULL,
status_anual VARCHAR (25) NOT NULL,

PRIMARY KEY (id_aluno)
);

-- Inserindo valores na Tabela
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("Henrique Souza", "45698773x", "Matemática", 9, "Aprovado");
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("Daniel da Hora", "440589423", "Português", 7, "Passou");
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("Luiz Melin", "440456985", "Inglês", 5, "Recuperação");
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("Lucas Souza", "456985458", "História", 8, "Aprovado");
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("Valeria Reis", "33895656x", "Português", 10, "Aprovado");
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("Gustavo Boaz", "123456780", "Espanhol", 10, "Aprovado");
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("William Nascimento", "45698512x", "Geografia", 4, "Reprovado");
INSERT INTO tb_alunos (nome, rg, disciplina, nota, status_anual)
	VALUES ("Glaucia Vera", "987562458", "Fisica", 6, "Aprovado");
    
SELECT * FROM tb_alunos;

-- Aluno com a nota maior do que 7.
SELECT * FROM tb_alunos WHERE nota > 7;

-- Aluno com a nota menor do que 7.
SELECT * FROM tb_alunos WHERE nota < 7;

-- Ataualizando os dados da tabela
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_alunos SET nota = 6 WHERE id_aluno = 6;
    