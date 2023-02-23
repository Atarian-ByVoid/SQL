create database FormulaXP;
use FormulaXP;

CREATE TABLE Carro (
    id_carro INT NOT NULL,
    marca VARCHAR(60),
    nome VARCHAR(60),
    cilindradas float,
    cor enum ('vermelho','azul','branco'),
    ano YEAR,
    PRIMARY KEY (id_carro)
);

CREATE TABLE Piloto (
    id_piloto INT NOT NULL,
    nome VARCHAR(60),
    nacionalidade ENUM('BR', 'AR', 'IT', 'UK'),
    id_carro INT UNIQUE,
    PRIMARY KEY (id_piloto),
    FOREIGN KEY (id_carro)
        REFERENCES Carro (id_carro)
);




