
/* Equipamentos e outros variados de sunset */
CREATE TABLE Information_Allied_Characters (
    Id INTEGER NOT NULL AUTO_INCREMENT primary key,
    Name_Character VARCHAR(100),
    Blood_Tip VARCHAR(100),
    Atk INT(2),
    Def INT(5),
    Pv INT(2),
    Mp INT(1),
    Money INT(255),
    Class VARCHAR(100)
);
insert
into Information_Allied_Characters(Name_Character,Blood_Tip,Atk,Def,Pv,Mp,Money,Class)
values
('Sunset','Blood of the fallen Gods',230,61,500,220,200,'Sumonner'),
('Midnight','Blood of the Gods of War',280,73,500,200,30,'Warrior');
select*from Information_Allied_Characters;

/* Inventario Sunset completo */
CREATE TABLE Inventory_Allied_Characters (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
    Hook VARCHAR(100),
    FOREIGN KEY (Id)
        REFERENCES Information_Allied_Characters (Id)
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
select*from Inventory_Allied_Characters;

/* lunatic Occultist */
CREATE TABLE lunatic_Occultist (
    Id INTEGER NOT NULL AUTO_INCREMENT primary key,
    Name_Enemy VARCHAR(100),
    Pv INT(3),
    Def INT(3),
    Physical INT(4),
    Dark_Fire_Ball INT(5),
    Ice_Fog INT(2),
    FireBall INT(5),
    Radius_Esfere INT(6),
    Ancient_Light INT(1),
    Ancient_Disgrace INT(1),
    FOREIGN KEY (Id)
        REFERENCES Information_Allied_Characters (Id)
);
insert 
into lunatic_Occultist(Name_Enemy,Pv,Def,Physical,Dark_Fire_Ball,Ice_Fog,FireBall,Radius_Esfere,Ancient_Light,Ancient_Disgrace)
values
('lunatic Occultist',32000,42,50,36,70,60,90,120,30);
select*from lunatic_Occultist;

CREATE TABLE lunatic_Occultist_Drop (
    Id INTEGER NOT NULL AUTO_INCREMENT primary key,
    Name_Drop_1 VARCHAR(50) ,
    Name_Drop_2 VARCHAR(50) ,
    Name_Drop_3 VARCHAR(50) ,
    Name_Drop_4 VARCHAR(30) ,
    FOREIGN KEY (Id)
        REFERENCES lunatic_Occultist (Id)
);
insert
into lunatic_Occultist_Drop(Name_Drop_1,Name_Drop_2,Name_Drop_3,Name_Drop_4)
values 
('Ancient Manipulator 1','Lunatics Mask 1','Lunatics Trophy 1','Advanceded Healing 30');
select*from lunatic_Occultist_Drop;


/*Boss final Moon Lord*/
CREATE TABLE MoonLord (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Pv int(1),
    Atk INT(1),
    Def INT(1) ,
    PhantasmalDeathray INT(4),
    Contact_OpenEye_Socket INT(3),
    PhantasmalSphere INT(4),
    PhantasmalEye INT(2),
    PhantasmalBolt INT(10)
);
insert
into MoonLord (Pv,Def,Atk)
values
(145000,160,510);
select*from MoonLord;
SET foreign_key_checks = 0;


CREATE TABLE MoonLord_Drop (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Drop_1 VARCHAR(50),
    Drop_2 VARCHAR(50),
    Drop_3 VARCHAR(50),
    Drop_4 VARCHAR(50),
    FOREIGN KEY (Id)
        REFERENCES MoonLord (Id)
);


CREATE TABLE Pilars (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Pilar VARCHAR(30),
    Pv INTEGER(4),
    Fragments_Drop VARCHAR(30),
    Fragments_Quantity INTEGER(4),
    FOREIGN KEY (Id)
        REFERENCES lunatic_Occultist (id),
            FOREIGN KEY (Id)
        REFERENCES MoonLord (Id)
);
insert
into Pilars(Name_Pilar,Pv,Fragments_Drop,Fragments_Quantity)
values
('Solar',20000,'Solar fragments',45),
('Vortex',20000,'Vortex fragments',45),
('Nebulla',20000,'Nebulla fragments',45),
('Stardust',20000,'Stardust fragments',45);
SELECT*from Pilars;


/*Inimigos do evento da lua e variados...*/
CREATE TABLE Solar_Pilar_Enemies (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (Id)
        REFERENCES Pilars(Id)
);
insert 
into Solar_Pilar_Enemies(Name_Minion,Pv,Atk,Def)
values 
('Seliano',900,94,34),
('Drakanian',100,80,28),
('River Gorite',600,90,26),
('Sroller',700,188,34),
('Crawltipede',100,150,0),
('Drakomire',800,550,32),
('Drakomire Rider',800,80,28);
select*from Solar_Pilar_Enemies;
SET foreign_key_checks = 0;


CREATE TABLE Stardust_Pilar_Enemies (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (Id)
        REFERENCES Pilars(Id)
);
insert 
into Stardust_Pilar_Enemies(Name_Minion,Pv,Atk,Def)
values
('Flow Ivander',1500,190,38),
('Milhway Weaver',1200,80,10),
('Star Cell',300,120,50),
('Star Gazer',200,80,34),
('Twinkle',200,80,10),
('Twinkle Popper',800,80,10);
select*from Stardust_Pilar_Enemies;
SET foreign_key_checks = 0;


CREATE TABLE Nebulla_Pilar_Enemies (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (Id)
        REFERENCES Pilars(Id)
);
insert 
into Nebulla_Pilar_Enemies(Name_Minion,Pv,Atk,Def)
values
('Brain Succhlhes',330,70,34),
('Evolution Beast',850,190,46),
('Nebulla Floates',1300,205,20),
('Predictos',200,200,30);
select*from Nebulla_Pilar_Enemies;
SET foreign_key_checks = 0;


CREATE TABLE Vortex_Pilar_Enemies (
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (Id)
        REFERENCES Pilars(Id)
);
insert 
into Vortex_Pilar_Enemies(Name_Minion,Pv,Atk,Def)
values
('Alien Hornet',5000,25,20),
('Alien Larva',200,50,46),
('Alien Queen',1000,220,44),
('Storm Diver',800,250,40),
('Vortexian',700,90,34);
select * from Vortex_Pilar_Enemies;
SET foreign_key_checks = 0;





/*              FIM               */