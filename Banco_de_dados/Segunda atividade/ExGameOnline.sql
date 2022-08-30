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
forca INT,
poder VARCHAR(255),
inteligencia INT,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)

);

SELECT * FROM db_generation_game_oline.tb_classes;

INSERT INTO tb_classes (nivel,descricao,dificuldade) 
VALUES (01,"Nesse jogo você pode usar força ou inteligência","Fácil");

INSERT INTO tb_classes(nivel,descricao,dificuldade) 
VALUES (02,"Parabéns por ter conseguido passar por está fase","Médio");

INSERT INTO tb_classes(nivel,descricao,dificuldade) 
VALUES (03, "Ufa mais um nível concluido com sucesso","Difícil");

INSERT INTO tb_classes(nivel,descricao,dificuldade) 
VALUES (04, "Calma que ainda não acabou","Médio");

INSERT INTO tb_classes(nivel,descricao,dificuldade) 
VALUES (05, "Boa sacada","Difícil");

INSERT INTO tb_classes (nivel,descricao,dificuldade) 
VALUES (06,"Vamos lá falta pouco","Médio");

INSERT INTO tb_classes (nivel,descricao,dificuldade) 
VALUES (07,"Sua persistência fará com que chegue no final","Difícil");

INSERT INTO tb_classes (nivel,descricao,dificuldade) 
VALUES (08,"Ebaa finalmente acabou PARABENNNS!!!","Difícil");

SELECT * FROM db_generation_game_oline.tb_personagens;

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id)
VALUES ("Markus",10000,"Voa",10,1);

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id)
VALUES ("Cornelius",10000,"Lança raio",10,2);

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id)
VALUES ("Minka",2000,"Fogo",10,3);

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id)
VALUES ("Louis",5000,"Transforma tudo em metal",5,4);

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id)
VALUES ("Jason",1500,"Grito ultra sônico",5,5);

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id)
VALUES ("Lili",5000,"Veneno",10,6);

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id) 
VALUES ("Lua",2000,"Escuridão",5,7);

INSERT INTO tb_personagens (nome,forca,poder,inteligencia,classe_id)
VALUES ("Gueicha",15000,"Forte",10,8);

SELECT * FROM tb_personagens WHERE forca > 2000;

SELECT * FROM tb_personagens WHERE forca >=1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id = tb_personagens.classe_id 
WHERE nome = "Minka";



 
