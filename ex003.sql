
CREATE DATABASE loja;

CREATE TABLE produtos(
id int auto_increment primary key,
nome VARCHAR (50),
categoria VARCHAR (30),
preco DECIMAl (10,2),
estoque int
);

INSERT INTO produtos (nome, categoria, preco, estoque) values
('Teclado','Perifericos',120.00,15),
('Mouse','Perifericos',60.00,30),
('Monitor','Eletronicos',850.00,10),
('Notebook','Eletronicos',3500.00,5),
('Cadeira','Moveis',700.00,8),
('Mesa','Moveis',450.00,12);

UPDATE produtos
SET preco = 900.00
WHERE nome = 'Monitor';

DELETE from produtos
where id = '4';

SELECT * FROM PRODUTOS;

truncate table produtos;
