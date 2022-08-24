CREATE DATABASE tb_recusos_humanos;

USE tb_recusos_humanos;

CREATE TABLE tb_Colaboradores(

id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
idade INT,
cpf VARCHAR (14),
setor VARCHAR(30),
salario INT
);
SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome,idade,cpf,setor,salario) VALUES("Junior Chaves","50","228-258-333.04","Qualidade",5600);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2000 WHERE id = 2
 