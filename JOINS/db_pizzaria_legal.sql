CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
tipo_pizza VARCHAR(50) NOT NULL,  
tipo_massa VARCHAR(50) NOT NULL,

PRIMARY KEY (id_categoria)

);

-- Popule esta tabela Categoria com até 5 dados.

INSERT INTO tb_categoria (tipo_pizza, tipo_massa)
VALUES ("doce","fina");

INSERT INTO tb_categoria (tipo_pizza, tipo_massa)
VALUES ("doce","tradicional");

INSERT INTO tb_categoria (tipo_pizza, tipo_massa)
VALUES ("salgada","fina");

INSERT INTO tb_categoria (tipo_pizza, tipo_massa)
VALUES ("salgada","tradicional");

INSERT INTO tb_categoria (tipo_pizza, tipo_massa)
VALUES ("meio a meio","tradicional");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id_pizza INT NOT NULL AUTO_INCREMENT,
tamanho VARCHAR(50) NOT NULL,  
sabor VARCHAR(50) NOT NULL,
valor INT NOT NULL,
borda_recheada BOOLEAN,
cliente VARCHAR (100),
fk_categoria INT(50) NOT NULL,

PRIMARY KEY (id_pizza),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)

);

-- Popule esta tabela pizza com até 8 dados.
-- doces 1,2.  salgada 3,4. meio a meio 5

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("medio","palmito", 35, true, "Xonatas", 3);

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("grande","marguerita vegana", 65, true, "Anira", 3);

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("pequena","chocolate", 25, false, "Rose", 1);

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("grande","escarola e calabresa", 65, true, "Finicius", 3);

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("pequena","calabresa vegan", 25, true, "Dea", 2);

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("medio","chocolate com morango e chocolate com banana", 35, false, "Jacs", 5);

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("grande","tomate seco com rucula", 65, true, "Ully", 2);

INSERT INTO tb_pizza (tamanho, sabor, valor, borda_recheada, cliente, fk_categoria)
VALUES ("pequena","palmito", 25, false, "Boaz", 1);

SELECT * FROM tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.

SELECT * FROM tb_pizza WHERE valor > 45;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;

-- select  utilizando LIKE buscando os Produtos com a letra C
SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

--  select com Inner join entre  tabela categoria e pizza
SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_categoria;

SELECT *
-- CHAVE PRIMARIA = CHAVE ESTRANGEIRA
FROM tb_categoria INNER JOIN tb_pizza ON (id_categoria = fk_categoria);

--  select onde traga todos os Produtos de uma categoria específica
SELECT * FROM tb_pizza
	INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria
    WHERE id_categoria = 1;
    
    -- preciso arrumar.. rs 