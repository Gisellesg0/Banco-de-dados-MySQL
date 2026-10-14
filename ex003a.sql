--- UPDATE,DELETE,TRUNCATE ---

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

select * from produtos;

UPDATE produtos
SET preco = '75.00'
WHERE nome = 'Mouse';

UPDATE produtos
SET estoque = '10'
WHERE nome = 'Notebook ';

UPDATE produtos
SET categoria = 'escritorio'
WHERE nome = 'Cadeira';

UPDATE produtos
SET preco = preco + 10.00
WHERE categoria = 'Perifericos';

DELETE FROM produtos
where nome = 'mesa';

DELETE FROM produtos
where id = '3';

delete from produtos
where estoque < 10;

delete from produtos
where categoria = 'moveis';

truncate produtos;
