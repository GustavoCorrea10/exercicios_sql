CREATE DATABASE rh;

USE rh;

CREATE TABLE funcionarios(
id BIGINT AUTO_INCREMENT, --  AUTO_INCREMENT GERA UM NUMERO ALEATORIO, CADA VEZ QUE FOR ADICIONADO UM PRODUTO, ELE CONTA MAIS UM (1, 2, 3...)
nome VARCHAR(255) NOT NULL, -- VARCHAR é uma String e Not null e´para falar que o campo não pode ser nulo
idade INT,
tempodeservico VARCHAR(255),
salario DECIMAL(6,2) NOT NULL, -- 0000,00
cargo VARCHAR(255),
PRIMARY KEY (id) -- PRIMARY KEY tem que se conctar com uma chave que não vai se repetir,para mostar que o id nunca pode se repetir
);

INSERT INTO funcionarios(nome, idade, tempodeservico, salario, cargo) 
VALUES("Rodrigo", 30, "2 anos", 2100.00, "Programador java jr");

INSERT INTO funcionarios(nome, idade, tempodeservico, salario, cargo) 
VALUES("Lucas", 27, "4 anos", 7100.00, "Programador java Pleno");

INSERT INTO funcionarios(nome, idade, tempodeservico, salario, cargo) 
VALUES("Gustavo", 26, "10 anos", 9900.00, "Programador java Senior");

INSERT INTO funcionarios(nome, idade, tempodeservico, salario, cargo) 
VALUES("Valentina", 20, "5 meses", 1200.00, "Estagiária");

INSERT INTO funcionarios(nome, idade, tempodeservico, salario, cargo) 
VALUES("Pedro", 30, "4 meses", 1200.00, "Estagiário");

SELECT * FROM funcionarios;

SELECT * FROM funcionarios WHERE salario > 2000.00;

SELECT * FROM funcionarios WHERE salario < 2000.00;

UPDATE funcionarios SET salario = 2500.00 WHERE id = 1;
SELECT * FROM funcionarios;
