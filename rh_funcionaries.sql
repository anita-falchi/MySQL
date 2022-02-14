CREATE DATABASE db_rh; -- criando a database

USE db_rh; -- usando a database 

--  criando tabela 
CREATE TABLE tb_fucionaries( 
id BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL, 
email VARCHAR(50),
salario DECIMAL (10,2),
setor VARCHAR(30),
cpf VARCHAR(14),

PRIMARY KEY (id)

);

-- inserindo dados na tabela
INSERT INTO tb_fucionaries (nome, email, salario, setor, cpf)
	VALUES ("Anita", "anita@gmail.com", 5400.00, "TI", "xxx.xxx.xxx-xx"); 
    
INSERT INTO tb_fucionaries (nome, email, salario, setor, cpf)
	VALUES ("Joelma", "joelma@gmail.com", 5400.00, "TI", "xxx.xxx.xxx-xx"); 
    
INSERT INTO tb_fucionaries (nome, email, salario, setor, cpf)
	VALUES ("Jasé", "jase@gmail.com", 5400.00, "TI", "xxx.xxx.xxx-xx"); 
    
INSERT INTO tb_fucionaries (nome, email, salario, setor, cpf)
	VALUES ("Alan", "alan.@gmail.com", 5400.00, "TI", "xxx.xxx.xxx-xx"); 
    
INSERT INTO tb_fucionaries (nome, email, salario, setor, cpf)
	VALUES ("Geovaldo", "geo.@gmail.com", 5400.00, "TI", "xxx.xxx.xxx-xx"); 
    
-- selecionando algo especifico
SELECT * FROM tb_fucionaries WHERE salario > 2000;

-- selecionando algo especifico
SELECT * FROM tb_fucionaries WHERE salario < 2000;

-- atualizando um dado / dado e onde ele esta
UPDATE tb_fucionaries set salario = 7500.00 where id = 1;





    
