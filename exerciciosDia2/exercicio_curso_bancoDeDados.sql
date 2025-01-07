 CREATE DATABASE db_curso_da_minha_vida;
 
 USE db_curso_da_minha_vida;
 
CREATE TABLE tb_categorias (
 id bigint AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(255) NOT NULL,
 descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    carga_horaria INT NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY(categoriaid) REFERENCES tb_categorias(id) 
    );
    
    INSERT INTO tb_categorias(nome, descricao) 
    VALUES("Desenvolvimento", "curso de programação e desenvolvimento de software");
    
     INSERT INTO tb_categorias(nome, descricao) 
    VALUES("Marketing", "curso realacionado ao marketing digital");
    
     INSERT INTO tb_categorias(nome, descricao) 
    VALUES("Design", "curso de design gráfico");
    
     INSERT INTO tb_categorias(nome, descricao) 
    VALUES("Negócios", "curso sobre gestão, finanças e empreendorismo");
    
     INSERT INTO tb_categorias(nome, descricao) 
    VALUES("Saúde", "curso relacionado à área da saúde e bem-estar");
    
     INSERT INTO tb_categorias(nome, descricao) 
    VALUE("Tecnologia", "curso sobre a área de TI, como programação, redes e segurança");
    
    SELECT * FROM tb_categorias;
    
     -- =============================================================================================
     
     
     INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Java", "Curso completo de programação em Java", 550.00, 40, 1);
     
     INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Photoshop", "Aprenda a usar o Photoshop do básico ao avançado", 450.00, 20, 3);
     
	 INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Enfermagem", "Formação completa para profissionais que atuam no cuidado e recuperação de pacientes", 500.00, 25, 5);
     
	 INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Banco de Dados com SQL", "Aprofunde-se no uso de SQL para gerenciar bancos de dados relacionais", 500.00, 30, 6);
     
	 INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Excel Avançado", "Aprofunde seus conhecimentos em Excel para o mercado de trabalho", 500.00, 25, 4);
     
     INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Nutrição e Bem-estar", "Curso sobre nutrição e cuidados com a saúde", 400.00, 30, 5);
     
	 INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Python para Iniciantes", "Aprenda Python do básico ao avançado", 600.00, 50, 6);
     
	 INSERT INTO tb_cursos(nome, descricao, preco, carga_horaria, categoriaid)
     VALUES("Curso de Desenvolvimento Web com JavaScript", "Criação de sites interativos e dinâmicos usando JavaScript", 750.00, 45, 1);
     
     SELECT * FROM tb_cursos;
     SELECT * FROM tb_cursos WHERE preco > 500.00;
     SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00; 
     SELECT * FROM tb_cursos WHERE nome LIKE "%j%";
     
     SELECT  tb_cursos.nome, tb_cursos.preco, tb_categorias.nome
     FROM tb_cursos 
     INNER JOIN tb_categorias
     ON tb_cursos.categoriaid = tb_categorias.id;
     
	
     SELECT tb_cursos.nome, tb_cursos.preco, tb_categorias.nome
     FROM tb_cursos
     INNER JOIN tb_categorias ON tb_cursos.categoriaid = tb_categorias.id
     WHERE tb_categorias.nome = "Tecnologia";

     

     
     
     
     
    
