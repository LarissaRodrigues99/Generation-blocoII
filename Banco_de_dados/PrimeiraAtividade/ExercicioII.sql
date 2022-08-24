CREATE DATABASE tb_e_commerce;

USE tb_e_commerce;

CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
quantidade INT,
data_validade DATETIME,
data_fabricacao DATETIME,
valor DECIMAL(8,2)

);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome,quantidade,data_validade,data_fabricacao,valor) VALUES ("Celular",22,"2024-12-22","2022-12-24",500.20);

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 11 WHERE id = 6
