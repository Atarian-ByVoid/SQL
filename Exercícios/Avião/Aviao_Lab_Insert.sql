insert
into Funcionarios(Nome,Salario)
values
('Carlos',15000),
('Katly',18770),
('Pedro',15000),
('Sabrina',13000),
('Ann',17000),
('Violet',17677),
('Jet',12567);
select*from Funcionarios;

insert
into Voos(De,Para,Distancia,Partida,Chegada,Preco )
values
('Paris','Havai','8:00','14:45','19:40',5032),
('Paris','Estocolmo','8:00','21:14','5:0',2000),
('Solis','São Paulo','4:00','15:34','17:50',5000),
('Rio De Janeiro','Londres','4:50','18:40','22:10',3200),
('Barcelona','Porto Rico','23:59','23:59','23:59',0),
('Tibete','RSSC(Republica Socialista Soviéticas Da China)','3:00','9:00','14:23',1400),
('São Paulo','Espirito Santo','6:00','11:00','17:23','800');
select*from Voos;

insert 
into Pilota(Id_Fun,Num_Voo)
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7);
select*from Pilota;

insert 
into Aeronaves(Dist_Limite,Nome_Aero)
values
('1000','Kaiserreiches'),
('2000','Fliegertruppe'),
('2000','Luftstreitkräfte '),
('3000','Luftwaffe'),
('5000','Jagdgeschwader'),
('3000',' Sturzkampfgeschwader'),
('4000','Messerschmitt ');
select*from Aeronaves;

insert
into  Certificado(Id_Fun,Id_Aereo )
values 
(1,5),
(2,6),
(3,7),
(4,8),
(5,9),
(6,10),
(7,11);
select*from Certificado;

