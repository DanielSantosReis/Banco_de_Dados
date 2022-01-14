CREATE DATABASE db_generation_games_online;

USE db_generation_games_online;

CREATE TABLE tb_classe (
	id_classe INT AUTO_INCREMENT,
	tipo VARCHAR (25),
    ataque INT,
	defesa INT,
	PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem (
	id_person INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) NOT NULL,
    poderEspecial INT,
    idade INT,
    caracter VARCHAR (40) NOT NULL,
    fk_classe INT,
    FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe) 
);

INSERT INTO tb_classe (tipo, ataque, defesa) VALUES ("Mago",1500, 2500);
INSERT INTO tb_classe (tipo, ataque, defesa) VALUES ("Gladiador",1000, 1700);
INSERT INTO tb_classe (tipo, ataque, defesa) VALUES ("Templário",1000, 2100);
INSERT INTO tb_classe (tipo, ataque, defesa) VALUES ("Arcano",5000, 3500);
INSERT INTO tb_classe (tipo, ataque, defesa) VALUES ("Bruxo",3000, 1200);

INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES ("Ragnar ",85 ,55 ,"Ancestral" , 1);
INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES	("Sasuke ",200 ,20 ,"Uchiha" , 2);
INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES	("Citana ",77 ,41 ,"Mortal" , 3);
INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES	("Flash ",65 ,35 ,"Mítico" , 4);
INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES	("Thor ",144 ,500 ,"Mítico" , 5);
INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES	("Naruto ",220 ,20 ,"Sennin" , 10);
INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES	("Madara",199 ,189 ,"Uchiha" , 11);
INSERT INTO tb_personagem (nome, poderEspecial,idade,caracter,fk_classe) VALUES	("Jiraya" ,150 ,60 ,"Sennin" , 12);


SELECT * FROM tb_classe WHERE ataque > 2000;
SELECT * fROM tb_classe WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";


SELECT nome,idade,caracter FROM tb_personagem
	INNER JOIN tb_classe ON tb_personagem.id_person = tb_classe.id_classe;
    
SELECT * FROM tb_personagem WHERE id_classe = 5;
    

