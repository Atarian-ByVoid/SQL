/* Equipamentos e outros variados de sunset */
CREATE TABLE Information_Allied (
    Id_Allied INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Character VARCHAR(100),
    Blood_Tip VARCHAR(100),
    Atk INTEGER,
    Def INTEGER,
    Pv INTEGER,
    Mp INTEGER,
    Money INTEGER,
    Class VARCHAR(100)
);
insert
into Information_Allied(Name_Character,Blood_Tip,Atk,Def,Pv,Mp,Money,Class)
values
('Sunset','Blood Of The Fallen Gods',230,61,500,220,200,'Sumonner'),
('Midnight','Blood Of The Gods Of War',280,73,500,200,30,'Warrior');
SELECT 
    *
FROM
    Information_Allied;

/* Inventario Sunset completo */
CREATE TABLE Inventory_Allied_Characters (
    Id_Allied_Inventory INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Character VARCHAR(100),
    Cosmetics_1 VARCHAR(100),
    Cosmetics_2 VARCHAR(100),
    Cosmetics_3 VARCHAR(100),
    Cosmetics_4 VARCHAR(100),
    Cosmetics_5 VARCHAR(100),
    Equipments_1 VARCHAR(100),
    Equipments_2 VARCHAR(100),
    Equipments_3 VARCHAR(100),
    Equipments_4 VARCHAR(100),
    Equipments_5 VARCHAR(100),
    Armor_1 VARCHAR(100),
    Armor_2 VARCHAR(100),
    Armor_3 VARCHAR(100),
    Weapons_1 VARCHAR(100),
    Weapons_2 VARCHAR(100),
    Weapons_3 VARCHAR(100),
    Pets_1 VARCHAR(100),
    Pets_2 VARCHAR(100),
    Mount VARCHAR(100),
    Hook VARCHAR(100)
);
insert 
into Inventory_Allied_Characters(Name_Character,Cosmetics_1,Cosmetics_2,Cosmetics_3 ,Cosmetics_4 ,Cosmetics_5 ,
Equipments_1 ,Equipments_2 ,Equipments_3 ,Equipments_4 ,Equipments_5 ,Armor_1 ,Armor_2 ,
Armor_3,Weapons_1,Weapons_2,Weapons_3,Pets_1,Pets_2,Mount,Hook)
values	
('Sunset','Fleting Celestial Cuffs','Hallowed Hood','Hallowed Plate','Hallowed Greaves','Hasty Charm Myths',
'Meacing Moon Charm','Meacing Pygmy Necklace','Arcane Squires Shield','Guarding Blindfold','Brist Angel Wings',
'Valhala Knights Helm','Valhala Knights Breatsplate','Valhala Knights Greaves',
'Shody Flying Dragon','Forceful Aerial Lane','Spectre Hamaxe','Cosmic Car Key','Creeper Egg','Full Moon Squeaky','Lunar Hook Toy'),

('Midnight','Mage Hat','Tax Collector Clothes','Sailors Pants','Winters Cape','Guarding Blindfold',
'Philosofical Stone','Blizzard In Bottle','Titan Gloves','Quiver','Magma Skull','Squires Helm','Squires Plating','Squires Greaves',
'Pointy Keybrand','Orichalcum Waraxe','Ruthless Halloweed Reapeater','Cosmic Car Key','Ball O Fuse Wire','Creeper Egg','Dual Hook');
SELECT 
    *
FROM
    Inventory_Allied_Characters;

CREATE TABLE Id_Inventory_AND_Allied (
    Id_Allied INTEGER,
    Id_Allied_Inventory INTEGER,
    FOREIGN KEY (Id_Allied)
        REFERENCES Information_Allied (Id_Allied),
    FOREIGN KEY (Id_Allied_Inventory)
        REFERENCES Inventory_Allied_Characters (Id_Allied_Inventory)
);

/* lunatic Occultist */
CREATE TABLE lunatic_Occultist (
    Id_Allied INTEGER,
    Id_Boss INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Enemy VARCHAR(100),
    Pv INTEGER,
    Def INTEGER,
    Physical INTEGER,
    Dark_Fire_Ball INTEGER,
    Ice_Fog INTEGER,
    FireBall INTEGER,
    Radius_Esfere INTEGER,
    Ancient_Light INTEGER,
    Ancient_Disgrace INTEGER,
    FOREIGN KEY (Id_Allied)
        REFERENCES Information_Allied (Id_Allied)
);
insert 
into lunatic_Occultist(Id_Boss,Name_Enemy,Pv,Def,Physical,Dark_Fire_Ball,Ice_Fog,FireBall,Radius_Esfere,Ancient_Light,Ancient_Disgrace)
values
(default,'lunatic Occultist',32000,42,50,36,70,60,90,120,30);
SELECT 
    *
FROM
    lunatic_Occultist;
    
CREATE TABLE lunatic_Occultist_Drop (
    Id_Boss INTEGER,
    Name_Drop_1 VARCHAR(50),
    Name_Drop_2 VARCHAR(50),
    Name_Drop_3 VARCHAR(50),
    Name_Drop_4 VARCHAR(30),
    FOREIGN KEY (Id_Boss)
        REFERENCES lunatic_Occultist (Id_Boss)
);
insert
into lunatic_Occultist_Drop(Id_Boss,Name_Drop_1,Name_Drop_2,Name_Drop_3,Name_Drop_4)
values 
(1,'Ancient Manipulator 1','Lunatics Mask 1','Lunatics Trophy 1','Advanceded Healing 30');
SELECT 
    *
FROM
    lunatic_Occultist_Drop;


CREATE TABLE Pillar_Union (
    Id_MoonLord INTEGER,
    Id_Boss INTEGER,
    Id_Enemies_Solar INTEGER,
    Id_Enemies_Stardust INTEGER,
    Id_Enemies_Nebulla INTEGER,
    Id_Enemies_Vortex INTEGER,
    FOREIGN KEY (Id_Boss)
        REFERENCES lunatic_Occultist (Id_Boss),
    FOREIGN KEY (Id_Enemies_Solar)
        REFERENCES Solar_Pilar (Id_Enemies_Solar),
    FOREIGN KEY (Id_Enemies_Stardust)
        REFERENCES Stardust_Pilar (Id_Enemies_Stardust),
    FOREIGN KEY (Id_Enemies_Nebulla)
        REFERENCES Nebulla_Pilar (Id_Enemies_Nebulla),
    FOREIGN KEY (Id_Enemies_Vortex)
        REFERENCES Vortex_Pilar (Id_Enemies_Vortex),
    FOREIGN KEY (Id_MoonLord)
        REFERENCES MoonLord (Id_MoonLord)
);

/*Inimigos do evento da lua e variados...*/
CREATE TABLE Solar_Pilar (
    Id_Enemies_Solar INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1)
);
insert 
into Solar_Pilar(Name_Minion,Pv,Atk,Def)
values 
('Seliano',900,94,34),
('Drakanian',100,80,28),
('River Gorite',600,90,26),
('Sroller',700,188,34),
('Crawltipede',100,150,0),
('Drakomire',800,550,32),
('Drakomire Rider',800,80,28);
SELECT 
    *
FROM
    Solar_Pilar;


CREATE TABLE Stardust_Pilar (
    Id_Enemies_Stardust INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1)
);
insert 
into Stardust_Pilar(Name_Minion,Pv,Atk,Def)
values
('Flow Ivander',1500,190,38),
('Milhway Weaver',1200,80,10),
('Star Cell',300,120,50),
('Star Gazer',200,80,34),
('Twinkle',200,80,10),
('Twinkle Popper',800,80,10);
SELECT 
    *
FROM
    Stardust_Pilar;

CREATE TABLE Nebulla_Pilar (
    Id_Enemies_Nebulla INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1)
);

insert 
into Nebulla_Pilar(Name_Minion,Pv,Atk,Def)
values
('Brain Succhlhes',330,70,34),
('Evolution Beast',850,190,46),
('Nebulla Floates',1300,205,20),
('Predictos',200,200,30);
SELECT 
    *
FROM
    Nebulla_Pilar;

CREATE TABLE Vortex_Pilar (
    Id_Enemies_Vortex INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1)
);
insert 
into Vortex_Pilar(Name_Minion,Pv,Atk,Def)
values
('Alien Hornet',5000,25,20),
('Alien Larva',200,50,46),
('Alien Queen',1000,220,44),
('Storm Diver',800,250,40),
('Vortexian',700,90,34);
SELECT 
    *
FROM
    vortex_pilar_enemies;

/*Boss final Moon Lord*/
CREATE TABLE MoonLord (
    Id_MoonLord INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Pv INT,
    Atk INT,
    Def INT
);
insert
into MoonLord (Pv,Def,Atk)
values
(145000,160,510);
SELECT 
    *
FROM
    MoonLord;

CREATE TABLE MoonLord_Drop (
    Id_MoonLord INTEGER,
    Drop_1 VARCHAR(50),
    Drop_2 VARCHAR(50),
    Drop_3 VARCHAR(50),
    Drop_4 VARCHAR(50),
    FOREIGN KEY (Id_MoonLord)
        REFERENCES MoonLord (Id_MoonLord)
);
insert
into MoonLord_Drop(Id_MoonLord,Drop_1,Drop_2,Drop_3,Drop_4)
values
(1,'Greater Healing Potion 30','Super Healing Potion 40','Portal Gun','Meoware');
SELECT 
    *
FROM
    MoonLord_Drop;
    
    
    /*///////////////FIM//////////////////////////*/
    
    
    /*Mostre o PV do Alien Larva*/
    select V.Name_Minion , V.Pv
    from Vortex_Pilar V
    where Name_Minion ='Alien Larva';
    
    /*Quanto a Radius Esfere "poder do Ocultista Lunatico, causa de dano"*/
    select L.Radius_Esfere
    from lunatic_Occultist L;
    
    /*Quais são os drops do Moon Lord */
    select M.Drop_1 , M.Drop_2 , M.Drop_3 , M.Drop_4
	from MoonLord_Drop M;
    
    /*Mostre apenas um  aliado e seu tipo sanguíneo*/
    select I.Name_Character, I.Blood_Tip
    from Information_Allied I 
    where Id_Allied not in( select I2.Id_Allied from Information_Allied I2
    where Blood_Tip = 'Blood Of The Gods Of War');
    
    /*create view vortex  as*/
    select V.Name_Minion,V.Atk
    from  Vortex_Pilar V
    where  V. Id_Enemies_Vortex  not in (select  V2.Id_Enemies_Vortex  from Vortex_Pilar V2  where V2.PV >700 and V2. Def > 40);
     
    
    

  
    
    
  
