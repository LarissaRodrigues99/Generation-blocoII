CREATE DATABASE db_generation_game_oline;

USE db_generation_game_oline;

CREATE TABLE tb_classes(

id BIGINT AUTO_INCREMENT PRIMARY KEY,

nivel INT,
descricao VARCHAR(255),
dificuldade VARCHAR(255)

);

CREATE TABLE tb_personagens(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
poder VARCHAR(255),
ponto_fraco VARCHAR(255),
inteligencia INT,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)

);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (nivel,descricao,dificuldade) VALUES (01,"Nesse jogo você pode usar força ou inteligência","Fácil");

INSERT INTO tb_classes(nivel,descricao,dificuldade) VALUES (02,"Parabéns por ter conseguido passar por está fase","Médio");

INSERT INTO tb_classes(nivel,descricao,dificuldade) VALUES (03, "Ufa mais um nível concluido com sucesso","Difícil");

INSERT INTO tb_classes(nivel,descricao,dificuldade) VALUES (04, "Calma que ainda não acabou","Médio");

INSERT INTO tb_classes(nivel,descricao,dificuldade) VALUES (05, "Ebaa finalmente acabou PARABENNNS!!!","Difícil");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Markus","Voa","Gravidade baixa",10,1);

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Cornelius","Lança raio","Curto circuito",10,2);

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Minka","Fogo","Água",10,3);

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Louis","Transforma tudo em metal","Ácido",5,4);

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Jason","Grito ultra sônico","Tampão na boca",5,5);

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Lili","Veneno","Antidoto que corta o veneno",10,6);

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Lua","Escuridão","Dia ou luz",5,17);tb_classes

INSERT INTO tb_personagens (nome,poder,ponto_fraco,inteligencia,classe_id)
VALUES ("Gueicha","Força","Kriptonita",10,8);

 
