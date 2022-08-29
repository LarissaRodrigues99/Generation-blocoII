CREATE DATABASE tb_pizzaria_legal;

USE tb_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255),
tamanho VARCHAR(255),
borda_recheada BOOLEAN
);
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255),
preco DECIMAL(6,2),
massa VARCHAR(255),
quantidade INT,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzaria_legal.tb_categorias;

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",true);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",false);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Medio",true);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Medio",false);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",true);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",false);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho",true);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Grande",true);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Brotinho",true);

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Brotinho",false);



SELECT * FROM tb_pizzaria_legal.tb_pizzas;

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Frango C/ Catupiry",30.00,"tradicional",5,1);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Mussarela",40.59,"tradicional",5,2);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Prestígio",50.99,"tradicional",2,8);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Lombo C/ Catupiry",60.99,"tradicional",3,6);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Brocolis C/ Catupiry",40,"tradicional",4,9);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Calabresa",45.99,"tradicional",5,1);



SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco DESC;

SELECT * FROM tb_pizzas WHERE preco >= 50 	AND  preco <=100;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "c%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE sabor = "Mussarela";

