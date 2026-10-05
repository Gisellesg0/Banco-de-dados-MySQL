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