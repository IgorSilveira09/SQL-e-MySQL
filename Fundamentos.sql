-- Criar um banco de dados

CREATE DATABASE bancoexemplo;

--Remover um banco de dados

DROP DATABASE bancoexemplo;

-- Usar um banco

USE bancoexemplo;

-- Criar tabela

CREATE TABLE minhatabela (
    nome VARCHAR(100), --varchar=quantidade de caracteres
    salario INT,
    data_nascimento DATE,
);

-- Tipos de dados
VARCHAR ();
INT();
TIMESTAMP;
DATE;


-- Adicionar coluna

ALTER TABLE minhatabela ADD COLUMN  profissão VARCHAR (244);

-- * significa que todos os elementos 

-- Selecionar um elemento em uma tabela

SELECT * FROM pessoas;
SELECT nome FROM pessoas;

--------------- CRUD ----------------------------

-- CREATED = INSERT
INSERT INTO minhatabela (nome, salario, profissão)
VALUES('Igor',2500,'Dev');
-- READ = SELECT
SELECT * FROM minhatabela;
SELECT * FROM minhatabela WHERE salario >2000;;
-- UPDATE = UPDATE
UPDATE minhatabela SET salario = 2000 WHERE nome='Igor';

-- DELETE = DELETE;
DELETE FROM minhatabela WHERE profissão ='Dev';

-------------- CONSTRAINTS ------------------

CREATE TABLE pessoas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR (100),
    salario INT,
    data_nascimento DATA
);

------------- CONSTRAINTS - relação - FOREIGN KEY

CREATE TABLE enderecos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rua VARCHAR (255),
    numero VARCHAR (10),
    pessoa_id INT NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoas_(id)
);

------- JOIN ------------

 -- INNER JOIN 
  -- LEFT JOIN
   --  RIGHT JOIN
   



