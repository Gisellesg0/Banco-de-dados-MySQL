CREATE DATABASE db_fastcarveiculos;

USE db_fastcarveiculos;


CREATE TABLE sedes (
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(20) NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    nomedogerente VARCHAR(50) NOT NULL,
    multa_por_entrega_em_outro_ponto DECIMAL(5,2)
);


CREATE TABLE carros (
    placa VARCHAR(7) NOT NULL PRIMARY KEY,
    modelo VARCHAR(20),
    ano YEAR DEFAULT 2026,
    quilometragem DECIMAL(8,2),
    descricao TEXT
);


CREATE TABLE classes_de_carro (
    nome VARCHAR(20) NOT NULL,
    valordadiaria DECIMAL(5,2)
);


CREATE TABLE reservas (
    numero_da_reserva INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    quantidade_de_diaria INT,
    data_de_locacao DATE,
    data_de_retorno DATE,
    quilometros_rodados DECIMAL(8,2),
    multa INT,
    situacao VARCHAR(20),
    valor_total DECIMAL(8,2)
);


CREATE TABLE clientes (
    nome VARCHAR(20),
    CPF VARCHAR(11),
    CPF VARCHAR(11) NOT NULL,
    numero_da_CNH VARCHAR(11) NOT NULL,
    validade_da_CNH VARCHAR(4) NOT NULL,
    categoria_cnh ENUM('A', 'B', 'AB', 'C', 'D', 'E')
);


ALTER TABLE sedes
ADD COLUMN ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE classes_de_carro
ADD PRIMARY KEY (nome);

ALTER TABLE clientes
ADD PRIMARY KEY (CPF);

ALTER TABLE carros
ADD COLUMN ID_sede INT;

ALTER TABLE carros
ADD COLUMN nome_classe VARCHAR(20);


ALTER TABLE reservas
ADD COLUMN placa_carro VARCHAR(7);

ALTER TABLE reservas
ADD COLUMN CPF_cliente VARCHAR(11);

ALTER TABLE reservas
ADD COLUMN ID_sede INT;

ALTER TABLE carros
ADD FOREIGN KEY (ID_sede)
REFERENCES sedes(ID);

ALTER TABLE carros
ADD FOREIGN KEY (nome_classe)
REFERENCES classes_de_carro(nome);


ALTER TABLE reservas
ADD FOREIGN KEY (placa_carro)
REFERENCES carros(placa);

ALTER TABLE reservas
ADD FOREIGN KEY (CPF_cliente)
REFERENCES clientes(CPF);

ALTER TABLE reservas
ADD FOREIGN KEY (ID_sede)
REFERENCES sedes(ID);

DESCRIBE sedes;
DESCRIBE carros;
DESCRIBE classes_de_carro;
DESCRIBE reservas;
DESCRIBE clientes;
