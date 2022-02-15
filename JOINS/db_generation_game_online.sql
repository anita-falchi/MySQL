CREATE DATABASE db_generation_game_online;
 
 USE db_generation_game_online;
 
-- criando tabela 1 classe
CREATE TABLE tb_classe(
id INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (40),
especialidade VARCHAR (40),

PRIMARY KEY (id)

);

 -- inserir dados tabela classe
INSERT INTO tb_classe (categoria, especialidade)
VALUES ("mágico", "feitiçaria");

INSERT INTO tb_classe (categoria, especialidade)
VALUES ("guerreiro", "luta");

INSERT INTO tb_classe (categoria, especialidade)
VALUES ("arqueiro", "ataque de longa distancia");

INSERT INTO tb_classe (categoria, especialidade)
VALUES ("elfo", "uso da natureza");

INSERT INTO tb_classe (categoria, especialidade)
VALUES ("curandeiro", "cura");

SELECT * FROM tb_classe;

-- criar tabela personagens 5 atributos
CREATE TABLE 
tb_personagem(
id_personagem INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (60),
ataque INT,
defesa INT, 
nivel INT, 
precisao INT,
fk_classe INT,

PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id)

);

-- inserir 8 dados personagens
INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("Anita", 5000, 8888, 4, 95, 1);

INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("Nate", 3400, 5600, 3, 77, 4);

INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("Macaco_Em_Chamas", 9999, 9999, 5, 100, 3);

INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("Piscina_Plastica", 4500, 3000, 3, 99, 3);

INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("Passarinho_Amarelo", 5000, 8888, 4, 80, 4);

INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("Coqueiro_de_Oculos", 7777, 8000, 2, 40, 5);

INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("PÉ_de_Limão_doido", 4500, 7000, 3, 70, 3);

INSERT INTO tb_personagem (nome, ataque, defesa, nivel, precisao, fk_classe)
VALUES ("Balanço_Intergalactico", 8500, 8500, 5, 95, 5);
 
 SELECT * FROM tb_personagem;
 
 -- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

SELECT * FROM tb_personagem WHERE ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.


-- Faça um um select com Inner join entre  tabela classe e personagem.

SELECT *
-- CHAVE PRIMARIA = CHAVE ESTRANGEIRA
FROM tb_classe INNER JOIN tb_personagem ON (id = fk_classe);

-- Faça um select onde traga todos os personagem de uma classe específica 
-- (exemplo todos os personagens que são arqueiros).


SELECT * FROM tb_classe INNER JOIN tb_personagem ON id = fk_classe
WHERE tb_classe.categoria = "elfo"; 



