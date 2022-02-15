-- criar databse escola

CREATE DATABASE db_escola;

USE db_escola;

-- criar tabela 5 atributos

CREATE TABLE tb_alunos(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
sobrenome VARCHAR(100),
serie INT,
nota DECIMAL (10,2),
aprovado BOOLEAN,
matéria VARCHAR (50),

PRIMARY KEY (id)

);

-- populando tavela 8 dados

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("Anita", "Falchi", 10.00, true, "artes");

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("Andrea", "Falchi", 10.00, true, "artes");

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("Juliana", "Falchi", 10.00, true, "matématica");

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("Natalia", "Falchi", 10.00, true, "geografia");

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("Alan", "Falchi", 10.00, true, "história");

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("João", "Falchi", 7.00, true, "artes");

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("Valdir", "Falchi", 6.5, false, "matématica");

INSERT INTO tb_alunos (nome, sobrenome, nota, aprovado, matéria)
VALUE ("Ully", "Falchi", 5.5, false, "português");

SELECT * FROM tb_alunos;

-- notas notas maiores 7
SELECT * FROM tb_alunos WHERE nota > 7.0; 

-- notas menores que 7
SELECT * FROM tb_alunos WHERE nota < 7.0; 

-- atualizacao de dado

UPDATE tb_alunos SET nota = 9.0 WHERE id=8; 


SELECT * FROM tb_alunos;


