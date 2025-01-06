CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT, --  AUTO_INCREMENT GERA UM NUMERO ALEATORIO, CADA VEZ QUE FOR ADICIONADO UM PRODUTO, ELE CONTA MAIS UM (1, 2, 3...)
nome VARCHAR(255) NOT NULL, -- VARCHAR é uma String e Not null e´para falar que o campo não pode ser nulo
idade INT,
nota DECIMAL(4,2) NOT NULL,
periododeaula VARCHAR(255),
email VARCHAR(255) NOT NULL,
PRIMARY KEY (id) -- PRIMARY KEY tem que se conctar com uma chave que não vai se repetir,para mostar que o id nunca pode se repetir
);


INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("João Silva", 18, 8.5, "Manhã", "joao.silva@email.com");

INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("Maria Oliveira", 20, 6.7, "Manhã", "maria.oliveira@email.com");

INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("Carlos Santos", 22, 9.2, "Noite", "carlos.santos@email.com");

INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("Ana Costa", 19, 7.3, "Tarde", "ana.costa@email.com");

INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("Lucas Pereira", 21, 5.8, "Noite", "lucas.pereira@email.com");

INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("Fernanda Souza", 20, 9.0, "Manhã", "fernanda.souza@email.com");

INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("Rafael Lima", 23, 4.5, "Tarde", "rafael.lima@email.com");

INSERT INTO alunos (nome, idade, nota, periododeaula, email) 
VALUES ("Juliana Martins", 19, 6.3,"Noite", "juliana.martins@email.com");

SELECT * FROM alunos;

SELECT * FROM alunos WHERE nota > 7.0;

SELECT * FROM alunos WHERE nota < 7.0;

UPDATE alunos SET nota = 8.0 WHERE id = 2;


