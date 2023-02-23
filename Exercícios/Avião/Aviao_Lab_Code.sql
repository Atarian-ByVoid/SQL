CREATE TABLE Funcionarios (
    Id_Fun INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(30),
    Salario DOUBLE,
    PRIMARY KEY (Id_Fun)
);

insert
into Funcionarios(Nome,Salario)
values
('Carlos',15000),
('Katly',18770),
('Pedro',15000),
('Sabrina',13000),
('Ann',17000),
('Violet',17677),
('Spike',15450),
('Nasuna',14480),
('Miguel',16890),
('Jet',12567),
('Trimendisional Dolphin',135000),
('Spyro',17906);
select*from Funcionarios;

CREATE TABLE Voos (
    Num_Voo INTEGER NOT NULL AUTO_INCREMENT,
    De VARCHAR(70),
    Para VARCHAR(70),
    Distancia TIME,
    Partida TIME,
    Chegada TIME,
    Preco DOUBLE,
    PRIMARY KEY (Num_Voo)
);

insert
into Voos(De,Para,Distancia,Partida,Chegada,Preco )
values
('Paris','Havai','8:00','14:45','19:40',5032),
('Paris','Estocolmo','8:00','21:14','5:0',2000),
('Solis','São Paulo','4:00','15:34','17:50',5000),
('Rio De Janeiro','Londres','4:50','18:40','22:10',3200),
('Barcelona','Porto Rico','2:59','23:59','2:30',2453),
('Tibete','RSSC(Republica Socialista Soviéticas Da China)','3:00','9:00','14:23',1400),
('Three-Dimensional Dimension','Void ','23:59','23:59','23:59',0),
('São Paulo','Espirito Santo','6:00','11:00','17:23','800'),
('Gnorc','Arundel','22:30','11:34','11:23',2678),
('Crystal Empire','Tártaros','8:00','8:34','17:23',2678),
('Sky Empire','Tártaros','4:00','10:53','16:30',2348),
('Abissínia','Sea Of Clouds','3:13','13:26','16:40',1530);
select*from Voos;

CREATE TABLE Pilota (
    Id_Fun INTEGER,
    Num_Voo INTEGER,
    PRIMARY KEY (Num_Voo , Id_Fun),
    FOREIGN KEY (Id_Fun)
        REFERENCES Funcionarios (Id_Fun),
    FOREIGN KEY (Num_Voo)
        REFERENCES Voos (Num_Voo)
);

insert 
into Pilota(Id_Fun,Num_Voo)
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12);
select*from Pilota;

CREATE TABLE Aeronaves (
    Id_Aereo INTEGER NOT NULL AUTO_INCREMENT,
    Dist_Limite ENUM('1000', '2000', '3000', '4000', '5000'),
    Nome_Aero VARCHAR(30),
    PRIMARY KEY (Id_Aereo)
);	

insert 
into Aeronaves(Dist_Limite,Nome_Aero)
values
('1000','Kaiserreiches'),
('2000','Fliegertruppe'),
('2000','Luftstreitkräfte '),
('3000','Luftwaffe'),
('5000','Jagdgeschwader'),
('3000',' Sturzkampfgeschwader'),
('4000','Messerschmitt '),
('3000','USS Enterprise (NCC-1701)'),
('4000','ISS Enterprise (NCC-1701)'),
('5000',' ISS Enterprise (NX-01)'),
('3000','Thranta-class Republic Corvette'),
('3000','Gladiator-class Star Destroyer'),
('4000','Harrow-class Star Destroyer'),
('2000','Viceroy Class Star Destroyer'),
('5000','Imperial Class Star Destroyer'),
('3000','Tector-class Star Destroyer');
select*from Aeronaves;


CREATE TABLE Certificado (
    Id_Fun int,
    Id_Aereo INT,
    primary key (Id_Fun, Id_Aereo),
    FOREIGN KEY (Id_Fun)
        REFERENCES Funcionarios (Id_Fun),
    FOREIGN KEY (Id_Aereo)
        REFERENCES Aeronaves (Id_Aereo)
);

insert
into  Certificado(Id_Fun,Id_Aereo )
values 
(1,5),
(2,6),
(3,7),
(4,8),
(5,9),
(6,10),
(7,11),
(8,12),
(9,13),
(10,14),
(11,15),
(12,16);
select*from Certificado;


/*Atvidade A*/
SELECT 
    V.De, V.Para, V.preco
FROM
    Voos V
ORDER BY Preco ASC;

/*Atvidade B*/
SELECT 
    *
FROM
    Voos
WHERE
    Distancia > '6:00'
ORDER BY Para;

/*Atvidade C*/
SELECT *FROM Funcionarios
WHERE Salario > 16560
ORDER BY Nome;

/*Atvidade D*/
SELECT A.Nome_Aero, F.Nome
FROM Funcionarios F, Aeronaves A, Certificado C
WHERE F.Id_Fun = C.Id_Fun
        AND A.Id_Aereo = C.Id_Aereo
        AND F.Salario > 6000;

/*Atvidade E*/
SELECT 
    V.De, V.Para, F.Nome
FROM
    Voos V,
    Funcionarios F,
    Pilota P
WHERE
    V.Num_Voo = P.Num_Voo
        AND F.Id_Fun = P.Id_Fun
        AND V.De = 'Paris';

/*Atvidade F*/
SELECT 
    V.De, V.Para, F.Nome AS Nome, F.Salario AS Salario
FROM
    Voos V,
    Funcionarios F,
    Pilota P
WHERE
    V.Num_Voo = P.Num_Voo
        AND F.Id_Fun = P.Id_Fun
        AND F.Salario > 17233;

/*Atvidade G*/
SELECT 
    A.Nome_Aero AS Aeronave,
    A.Dist_Limite AS Autonomia,
    F.Nome AS Piloto
FROM
    Aeronaves A,
    Funcionarios F,
    Certificado C
WHERE
    A.Id_Aereo = C.Id_Aereo
        AND F.Id_Fun = C.Id_Fun
        AND A.Dist_Limite > '2000'
        AND A.Dist_Limite < '5000';

/*Atvidade H*/
SELECT 
    A.Nome_Aero AS Aeronave, F.Nome AS Piloto
FROM
    Aeronaves A,
    Funcionarios F,
    Certificado C
WHERE
    A.Id_Aereo = C.Id_Aereo
        AND F.Id_Fun = C.Id_Fun
        AND A.Nome_Aero = 'Gladiator-class Star Destroyer'
        AND F.Id_Fun NOT IN (SELECT 
            F2.Id_Fun
        FROM
            Aeronaves A2,
            Funcionarios F2,
            Certificado C2
        WHERE
            A2.id_Aereo = C2.id_Aereo
                AND F2.Id_Fun = C2.Id_Fun
                AND A2.Nome_Aero = 'Tector-class Star Destroyer');
