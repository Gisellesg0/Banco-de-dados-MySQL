-- exercicio 1--

create database exercicio;

create table alunos(
nome varchar(50),
idade int
);

ALTER TABLE alunos
add column email varchar(100);

ALTER TABLE alunos
add column telefone varchar(5);

desc alunos;

-- EX2 --
CREATE TABLE produtos(
nome VARCHAR(30),
preco INT
);

ALTER TABLE produtos
MODIFY COLUMN preco DECIMAL(10,2);

ALTER TABLE produtos
modify COLUMN nome VARCHAR(50);

DESC PRODUTOS;
-- EX03 -- 

create table funcionarios(
nome varchar(50),
salario decimal(10,2)
);

alter table funcionarios
change column nome nome_completo varchar (50);

ALTER TABLE FUNCIONARIOS
CHANGE COLUMN SALARIO SALARIO_MENSAL DECIMAL(10,2);

DESC FUNCIONARIOS;

-- 4 -- 

CREATE  TABLE CLIENTES(
nome varchar(50),
telefone varchar(15)
);

alter table CLIENTES
add column id_cliente INT NOT NULL PRIMARY KEY auto_increment first;

DESC CLIENTES;

-- 5 --

CREATE TABLE CARROS(
PLACA VARCHAR(7),
MODELO VARCHAR(30),
COR VARCHAR(20),
ANO INT
);

ALTER TABLE CARROS
DROP COLUMN COR;


ALTER TABLE CARROS
DROP COLUMN ANO;

DESC CARROS;

-- 6 --

CREATE TABLE PESSOAS(
NOME VARCHAR(50),
IDADE INT
);

ALTER TABLE PESSOAS
RENAME TO  CLIENTE;

DESC CLIENTE;






