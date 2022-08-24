CREATE DATABASE db_escola_generation;

USE db_escola_generatio;

CREATE TABLE tb_alunes(

	id bigint auto_increment primary key,
    nome varchar(255),
     data_nascimento date,
     turma int,
     nota decimal(4,2)
);

SELECT * FROM tb_alunes;

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota) VALUES("Yasmin Rodrigues","1996-6-30",20,10);

SELECT * FROM tb_alunes WHERE nota > 7;

SELECT * FROM tb_alunes WHERE nota < 7 LIMIT 100;

UPDATE tb_alunes SET nota = 7 WHERE id=3;