CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
numero_do_cracha INT,
funcionario_disponivel BOOLEAN

);

CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
remedio VARCHAR (255),
produtos_de_higiene VARCHAR (255),
produtos_para_bebes VARCHAR(255),
estoque BOOLEAN,
valor DECIMAL(8,2),

categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)

);

SELECT * FROM db_farmacia_bem_estar.tb_categorias;

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("Jakeline Silva",0025,true);

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("Karen Vaz",0026,true);

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("Joaquim Neves",0027,true);

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("João Paulo",0028,false);

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("Junior Leal",0029,false);

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("Ana Katarina", 0050,true);

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("Victoria Nascimento", 0055,true);

INSERT INTO tb_categorias (nome,numero_do_cracha,funcionario_disponivel) VALUES ("João da Silva",0056,true);

SELECT * FROM db_farmacia_bem_estar.tb_produtos;

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id) 
VALUES ("Dorflex","Fiu dental","Fralda",true,50,1);

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id)
VALUES ("Dipirona","Pasta de dente","Talco",true,60,2);

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id)
VALUES ("Bala de menta","Nenhum","Nenhum",true,2,3);

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id)
VALUES ("Dramin","Enchaguante bocal","Nenhum",true,25,4);

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id)
VALUES("Descongestionante nasal","Nenhum","Pomada",true,35,5);

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id)
VALUES("Nenhum","Nenhum","Lencinho umedecido",false,9,6);

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id)
VALUES ("Nenhum","Fiu dental","Nenhum",true,2,7);

INSERT INTO tb_produtos (remedio,produtos_de_higiene,produtos_para_bebes,estoque,valor,categoria_id)
VALUES ("Nenhum","Nenhum","Nenhum",false,1,8);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor <=60 AND 5;

SELECT * FROM tb_produtos WHERE remedio LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id WHERE remedio = "Dorflex";
