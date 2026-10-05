create database cadastro
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

create table pessoas(
id int not null auto_increment primary key,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil'
);

drop table pessoas;

create table pessoas(
id int not null auto_increment primary key,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil'
);

insert into pessoas  values 
(default,'claudio','1975-06-05','M','50','1.88','Japonesa'),
(default,'pedro','1999-12-3','F','75.4','1.66','EUA');

select*from pessoas;