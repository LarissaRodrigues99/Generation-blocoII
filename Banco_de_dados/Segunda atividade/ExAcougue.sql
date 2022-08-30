CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
kg DECIMAL(8,2),
nome VARCHAR (255)

);

CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
tempero BOOLEAN,
estado VARCHAR(255),
estoque INT,
preco DECIMAL(8,2),

categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)


);

SELECT * FROM db_cidade_das_carnes.tb_categorias;


INSERT INTO tb_categorias (kg,nome) VALUES (1.50,"Coxa com sobrecoxa");

INSERT INTO tb_categorias (kg,nome) VALUES (2,"Coxa");

INSERT INTO tb_categorias (kg,nome) VALUES (1,"Agulha com osso");

INSERT INTO tb_categorias (kg,nome) VALUES (4,"Alcatra");

INSERT INTO tb_categorias (kg,nome) VALUES (2.50,"Bife á milanesa");

INSERT INTO tb_categorias (kg,nome) VALUES (2.50,"Coração");

INSERT INTO tb_categorias (kg,nome) VALUES (500,"Bacon");

INSERT INTO tb_categorias (kg,nome) VALUES (500, "Picanha");

SELECT * FROM db_cidade_das_carnes.tb_produtos;

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (true,"Fresco",50,20,1);

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (true,"Congelado",100,22,2);

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (false,"Congelado",150,15,3);

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (false,"Fresco",200,35,4);

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (false, "Fresco",20,60.50,5);

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (false,"Congelado",250,25,6);

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (false,"Congelado",100,22.99,7);

INSERT INTO tb_produtos (tempero,estado,estoque,preco,categoria_id) VALUES (true,"Fresco",55,99.50,8);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco >=50 AND 150;

SELECT * FROM tb_categorias WHERE nome LIKE "C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id WHERE tempero = "1";



