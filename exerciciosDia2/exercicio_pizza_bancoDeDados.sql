CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ingredientes TEXT NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
     
);

INSERT INTO tb_categorias(nome, descricao) 
VALUE("Tradicional", "Pizza com receitas clássicas");

INSERT INTO tb_categorias(nome, descricao) 
VALUE("Especial", "Pizza com recheio extra");

INSERT INTO tb_categorias(nome, descricao) 
VALUE("Doce", "Pizzas doces");

INSERT INTO tb_categorias(nome, descricao) 
VALUE("Personalizada", "Pizza personalizada conforme o gosto do cliente");

INSERT INTO tb_categorias(nome, descricao) 
VALUE("Vegetariana", "Pizza sem carne, com ingredientes saudáveis");

SELECT * FROM tb_categorias;

-- ===================================================================================================

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Frango com catupiry", "frango desfiado com catupiry", 40.00, "grande", 1 );

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Quatro queijos", "mussarela, parmesão, gorgonzola, catupiry", 50.00, "média", 2 );

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Calabresa", "calabresa, cebola, azeitona", 38.00, "média", 1 );

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Vegetariana", "molho de tomate, cogumelos, pimentão, cebola", 40.00, "grande", 5 );

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Banana coom canela", "banana, canela, açucar", 30.00, "média", 3 );

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Nutella", "nutella, morango", 50.00, "grande", 3 );

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Portuguesa", "molho de tomate, mussarela, presunto, ovo cozido, azeitona, orégano", 50.00, "grande", 1 );

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoriaid) 
VALUES("Pizza mexicana", "carne moída, molho de tomate, pimenta, pimentão, cebola", 60.00, "média", 1 );

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.nome, preco, tamanho, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.nome
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.nome = "Doce";








