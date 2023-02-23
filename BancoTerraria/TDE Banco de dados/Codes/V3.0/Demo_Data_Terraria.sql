
/* Equipamentos e outros variados de sunset */
CREATE TABLE Information_Allied_Characters (
    Id_Character INT NOT NULL AUTO_INCREMENT,
    Name_Character VARCHAR(100),
    Blood_Tip VARCHAR(100),
    Atk INT(2),
    Def INT(5),
    Pv INT(2),
    Mp INT(1),
    Money INT(255),
    Class VARCHAR(100),
    PRIMARY KEY (Id_Character)
);

/* Inventario Sunset completo */
CREATE TABLE Inventory_Allied_Characters (
    Id_Character INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
    FOREIGN KEY (Id_Character)
        REFERENCES Information_Allied_Characters (Id_Character)
);

/* lunatic Occultist */
CREATE TABLE lunatic_Occultist (
    Id_Enemy INT NOT NULL AUTO_INCREMENT,
    Name_Enemy VARCHAR(100),
    Pv INT(3),
    Def INT(3),
    Physical INT(4),
    Dark_Fire_Ball INT(5),
    Ice_Fog INT(2),
    FireBall INT(5),
    Radius_Efere INT(6),
    Ancient_Light INT(1),
    Ancient_Disgrace INT(1),
    PRIMARY KEY (Id_Enemy)
);

CREATE TABLE lunatic_Occultist_Drop (
    Id_Enemy INTEGER PRIMARY KEY,
    Name_Drop_1 VARCHAR(50) NOT NULL,
    Name_Drop_2 VARCHAR(50) NOT NULL,
    Name_Drop_3 VARCHAR(50) NOT NULL,
    Name_Drop_4 VARCHAR(30) NOT NULL,
    FOREIGN KEY (Id_Enemy)
        REFERENCES lunatic_Occultist (Id_Enemy)
);

/* Pilares do evento da lua */
CREATE TABLE Pillars_Tips (
    Id_Enemy INTEGER,
    Id_Pilar INTEGER,
    Name_Pillar VARCHAR(100),
    Def INT(1),
    Name_Fragments VARCHAR(100),
    Quantity_Drop_Fragments INT(1),
    
    PRIMARY KEY (Id_Enemy , Id_Enemy_Boss_Finaly),
    FOREIGN KEY (Id_Enemy)
        REFERENCES lunatic_Occultist (Id_Enemy)

);

create table Minions(
id_Minion INTEGER primary key,
    FOREIGN KEY (Id_Enemy_Boss_Finaly)
        REFERENCES  MoonLord(Id_Enemy_Boss_Finaly)
);

/*Inimigos do evento da lua e variados...*/
CREATE TABLE Solar_Pilar_Enemies (
    Id_Pilar INTEGER NOT NULL PRIMARY KEY,
    Id_Minion INTEGER,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (id_Minion)
        REFERENCES  Minions (id_Minion)
);

CREATE TABLE Vortex_Pilar_Enemies (
    Id_Pilar INTEGER NOT NULL PRIMARY KEY,
    Id_Minion INTEGER,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (id_Minion)
        REFERENCES  Minions (id_Minion)
);

CREATE TABLE Stardust_Pilar_Enemies (
    Id_Pilar INTEGER NOT NULL PRIMARY KEY,
    Id_Minion INTEGER,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (id_Minion)
        REFERENCES  Minions (id_Minion)
);

CREATE TABLE Nebulla_Pilar_Enemies (
    Id_Pilar INTEGER NOT NULL PRIMARY KEY,
    Id_Minion INTEGER,
    Name_Minion VARCHAR(100),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    FOREIGN KEY (id_Minion)
        REFERENCES  Minions (id_Minion)
);

/*Boss final Moon Lord*/
CREATE TABLE MoonLord (
    Id_Enemy_Boss_Finaly INTEGER PRIMARY KEY,
    Pv int(1),
    Atk INT(1),
    Def INT(1) ,
    PhantasmalDeathray INT(4),
    Contact_OpenEye_Socket INT(3),
    PhantasmalSphere INT(4),
    PhantasmalEye INT(2),
    PhantasmalBolt INT(10)
);

CREATE TABLE MoonLord_Drop (
    Id_Enemy_Boss_Finaly INTEGER PRIMARY KEY,
    Drop_1 VARCHAR(50),
    Drop_2 VARCHAR(50),
    Drop_3 VARCHAR(50),
    Drop_4 VARCHAR(50),
    FOREIGN KEY (Id_Enemy_Boss_Finaly)
        REFERENCES MoonLord (Id_Enemy_Boss_Finaly)
);



/*              FIM               */








