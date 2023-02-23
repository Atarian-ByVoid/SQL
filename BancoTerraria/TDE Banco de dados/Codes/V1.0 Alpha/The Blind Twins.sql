
/* Equipamentos e outros variados de sunset */
CREATE TABLE Sunset (
    Blood_Of_The_Army_Of_Chaos INT(1),
    Atk_230 VARBINARY(230),
    Def_61 VARBINARY(61),
    Pv_500 VARBINARY(500),
    Mp_220 VARBINARY(220),
    Money_Platinum_2 VARBINARY(2),
   primary key( Blood_Of_The_Army_Of_Chaos) 
);
CREATE TABLE Sunset_Class_Summoner (
Blood_Of_The_Army_Of_Chaos int (1),
Summoner_Class INT (1) primary key,
    foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Class_Mage (
Blood_Of_The_Army_Of_Chaos int (1),
    Mage_Class INT(1) PRIMARY KEY,
        foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Equippable (
Blood_Of_The_Army_Of_Chaos int (1),
    Sunset_Equippable_All FLOAT(25) PRIMARY KEY,
    foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Cosmetic (

Blood_Of_The_Army_Of_Chaos int (1),
Fleting_Celestial_Cuffs int(1),
    Hallowed_Hood INT(1),
    Hallowed_Plate INT(1),
    Hallowed_Greaves INT(1),
    Hasty_Charm_Myths INT(1),
      PRIMARY KEY (Fleting_Celestial_Cuffs),
          foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)

);

CREATE TABLE Sunset_Equipments (
    Meacing_Moon_Charm INT(1) PRIMARY KEY,
    Meacing_Pygmy_Necklace INT(1),
    Arcane_Squires_Shield INT(1),
    Guarding_Blindfold INT(1),
    Brist_Angel_Wings INT(1),
    Blood_Of_The_Army_Of_Chaos int (1),
   foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Armor (
    Valhala_Knights_Helm INT(1) PRIMARY KEY,
    Valhala_Knights_Breatsplate INT(1),
    Valhala_Knights_Greaves INT(1),
    Blood_Of_The_Army_Of_Chaos int (1),
   foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Weapons (
    Shody_Flying_Dragon INT(1) PRIMARY KEY,
    Forceful_Aerial_Lane INT(1),
    Spectre_Hamaxe INT(1),
    Blood_Of_The_Army_Of_Chaos int (1),
   foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);
CREATE TABLE Sunset_Mount_Pets_Hook (
    Cosmic_Car_Key INT(1) PRIMARY KEY,
    Creeper_Egg INT(1),
    Full_Moon_Squeaky INT(1),
    Lunar_Hook_Toy INT(1),
    Blood_Of_The_Army_Of_Chaos int (1),
   foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);


/* Equipamentos e outros variados de Midnight */
CREATE TABLE Midnight (
Blood_Of_The_Gods_Of_War int (1),
    Atk_280 VARBINARY(280),
    Def_73 VARBINARY(73),
    Pv_500 VARBINARY(500),
    Mp_200 VARBINARY(200),
    Money_Gold_30 VARBINARY(30),
    PRIMARY KEY (Blood_Of_The_Gods_Of_War)
);
CREATE TABLE Sunset_Class_Warrior (
    Blood_Of_The_Gods_Of_War int (1),
Warrior_Class INT (1) primary key,
 foreign key (Blood_Of_The_Gods_Of_War)
    references  Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Equippable (
    Blood_Of_The_Gods_Of_War int (1),
    Midnight_Equippable_All FLOAT(1) PRIMARY KEY,
   foreign key (Blood_Of_The_Gods_Of_War)
    references  Midnight (Blood_Of_The_Gods_Of_War)
    
);

CREATE TABLE Midnight_Class_Warrior (
    Warrior_Cass INT(1) PRIMARY KEY,
    Blood_Of_The_Gods_Of_War int (1),
   foreign key (Blood_Of_The_Gods_Of_War)
    references Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Cosmetic (
    Mage_Hat INT(1) PRIMARY KEY,
    Tax_Collector_Clothes INT(1),
    Sailors_Pants INT(1),
    Winters_Cape INT(1),
    Guarding_Blindfold INT(1),
    Blood_Of_The_Gods_Of_War int (1),
   foreign key (Blood_Of_The_Gods_Of_War)
    references Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Equipments (
    Philosofical_Stone INT(1) PRIMARY KEY,
    Blizzard_In_Bottle INT(1),
    Titan_Gloves INT(1),
    Quiver INT(1),
    Magma_Skull INT(1),
    Blood_Of_The_Gods_Of_War int (1),
   foreign key (Blood_Of_The_Gods_Of_War)
    references Midnight (Blood_Of_The_Gods_Of_War)
);
CREATE TABLE Midnight_Armor (
    Squires_Helm INT(1) PRIMARY KEY,
    Squires_Plating INT(1),
    Squires_Greaves INT(1),
    Blood_Of_The_Gods_Of_War int (1),
   foreign key (Blood_Of_The_Gods_Of_War)
    references Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Weapons (
    Pointy_Keybrand INT(1) PRIMARY KEY,
    Orichalcum_Waraxe INT(1),
    Ruthless_Halloweed_Reapeater INT(1),
    Blood_Of_The_Gods_Of_War int (1),
   foreign key (Blood_Of_The_Gods_Of_War)
    references Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Mount_Pets_Hook (
    Cosmic_Car_Key INT(1) PRIMARY KEY,
    Ball_O_Fuse_Wire INT(1),
    Creeper_Egg INT(1),
    Dual_Hook INT(1),
    Blood_Of_The_Gods_Of_War int (1),
   foreign key (Blood_Of_The_Gods_Of_War)
    references Midnight (Blood_Of_The_Gods_Of_War)
);


/* lunatic Occultist */
CREATE TABLE lunatic_Occultist (
FK_Lunatic int (1),
    Pv_320000 VARBINARY(32000),
    Def_42 VARBINARY(42),
    Physical_50 VARBINARY(50),
    Dark_Fire_Ball_36 VARBINARY(36),
    Ice_Fog_70 VARBINARY(70),
    FireBall_60 VARBINARY(60),
    Radius_Efere_90 VARBINARY(90),
    Ancient_Light_120 VARBINARY(120),
    Ancient_Disgrace_30 VARBINARY(30),
    primary key (FK_Lunatic) 
);

CREATE TABLE lunatic_Occultist_Drop (
    Ancient_Manipulator INT(1) PRIMARY KEY,
    Lunatics_Mask INT(1),
    Lunatics_Trophy INT(1),
    Advanceded_Healing INT(30),
       FK_Lunatic int (1),
        foreign key (FK_Lunatic)
    references lunatic_Occultist (FK_Lunatic)
    
);


/* Pilares do evento da lua */
CREATE TABLE Pillars_Tips (
FK_Solar int (1),
FK_Stardust int (1),
FK_Nebulla int (1),
FK_Vortex int (1),
    Pillar_Tips_4 INT(4) PRIMARY KEY,
        FK_Lunatic int (1),
       foreign  key (FK_Lunatic)
    references  lunatic_Occultist (FK_Lunatic)


);

/* Pilares do evento da lua (Solar Pilar) */
CREATE TABLE Solar_pilar (
FK_Solar int (1),
    Pv_200 VARBINARY(200),
primary Key(FK_Solar)
);

CREATE TABLE Solar_pilar_Drops (
    Solar_Fragments_45 INT(45) PRIMARY KEY,
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);

CREATE TABLE Solar_pilar_Minions_Seliano (
    Pv_900 VARBINARY(900) PRIMARY KEY,
    Atk_90 VARBINARY(90),
    Def_34 VARBINARY(34),
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);

CREATE TABLE Solar_pilar_Minions_Drakanian (
    Pv_100 VARBINARY(100) PRIMARY KEY,
    Atk_80 VARBINARY(80),
    Def_28 VARBINARY(28),
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);

CREATE TABLE Solar_pilar_Minions_RiverGorite (
    Pv_600 VARBINARY(600) PRIMARY KEY,
    Atk_90 VARBINARY(90),
    Def_26 VARBINARY(26),
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);

CREATE TABLE Solar_pilar_Minions_Sroller (
    Pv_700 VARBINARY(700) PRIMARY KEY,
    Atk_188 VARBINARY(188),
    Def_34 VARBINARY(34),
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);

CREATE TABLE Solar_pilar_Minions_Crawltipede (
    Pv_100 VARBINARY(100) PRIMARY KEY,
    Atk_150 VARBINARY(150),
    Def_0 VARBINARY(0),
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);

CREATE TABLE Solar_pilar_Minions_Drakomire (
    Pv_800 VARBINARY(800) PRIMARY KEY,
    Atk_550 VARBINARY(550),
    Def_32 VARBINARY(32),
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);

CREATE TABLE Solar_pilar_Minions_DrakomireRider (
    Pv_800 VARBINARY(800) PRIMARY KEY,
    Atk_80 VARBINARY(80),
    Def_28 VARBINARY(28),
    FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)
);



/* Pilares do evento da lua (Nebulla Pilar) */

CREATE TABLE Nebulla_pilar (
FK_Nebulla int (1),
    Pv_200 VARBINARY(200),
    primary key (FK_Nebulla)
);

CREATE TABLE Nebulla_pilar_Drops (
    Nebulla_Fragments_45 INT(45) PRIMARY KEY,
    FK_Nebulla int (1),
foreign key (FK_Nebulla)
references Nebulla_Pilar(FK_Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_BrainSucchlhes (
    Pv_330 VARBINARY(330) PRIMARY KEY,
    Atk_70 VARBINARY(70),
    Def_34 VARBINARY(34),
    FK_Nebulla int (1),
foreign key (FK_Nebulla)
references Nebulla_Pilar(FK_Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_EvolutionBeast (
    Pv_850 VARBINARY(850) PRIMARY KEY,
    Atk_190 VARBINARY(190),
    Def_46 VARBINARY(46),
    FK_Nebulla int (1),
foreign key (FK_Nebulla)
references Nebulla_Pilar(FK_Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_NebullaFloates (
    Pv_1300 VARBINARY(1300) PRIMARY KEY,
    Atk_205 VARBINARY(205),
    Def_20 VARBINARY(20),
    FK_Nebulla int (1),
foreign key (FK_Nebulla)
references Nebulla_Pilar(FK_Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_Predictos (
    Pv_200 VARBINARY(200) PRIMARY KEY,
    Atk_200 VARBINARY(200),
    Def_30 VARBINARY(30),
    FK_Nebulla int (1),
foreign key (FK_Nebulla)
references Nebulla_Pilar(FK_Nebulla)
);


/* Pilares do evento da lua (Vortex Pilar) */
CREATE TABLE Vortex_pilar (
FK_Vortex int (1),
    Pv_200 VARBINARY(200) ,
    primary key(FK_Vortex)
);

CREATE TABLE Vortex_pilar_Drops (
    Nebulla_Fragments_45 INT(45) PRIMARY KEY,
    FK_Vortex int (1),
foreign key (FK_Vortex)
references Vortex_Pilar(FK_Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienHornet (
    Pv_5000 VARBINARY(5000),
    Atk_25 VARBINARY(25) PRIMARY KEY,
    Def_20 VARBINARY(20),
    FK_Vortex int (1),
foreign key (FK_Vortex)
references Vortex_Pilar(FK_Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienLarva (
    Pv_200 VARBINARY(200) PRIMARY KEY,
    Atk_50 VARBINARY(50),
    Def_46 VARBINARY(46),
    FK_Vortex int (1),
foreign key (FK_Vortex)
references Vortex_Pilar(FK_Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienQueen (
    Pv_1000 VARBINARY(1000) PRIMARY KEY,
    Atk_220 VARBINARY(220),
    Def_44 VARBINARY(44),
    FK_Vortex int (1),
foreign key (FK_Vortex)
references Vortex_Pilar(FK_Vortex)
);

CREATE TABLE Vortex_pilar_Minions_StormDiver (
    Pv_800 VARBINARY(800) PRIMARY KEY,
    Atk_250 VARBINARY(250),
    Def_40 VARBINARY(40),
    FK_Vortex int (1),
foreign key (FK_Vortex)
references Vortex_Pilar(FK_Vortex)
);

CREATE TABLE Vortex_pilar_Minions_Vortexian (
    Pv_700 VARBINARY(700) PRIMARY KEY,
    Atk_90 VARBINARY(90),
    Def_34 VARBINARY(34),
    FK_Vortex int (1),
foreign key (FK_Vortex)
references Vortex_Pilar(FK_Vortex)
);


/* Pilares do evento da lua (Stardust Pilar) */
CREATE TABLE Stardust_pilar (
FK_Stardust int (1),
    Pv_200 VARBINARY(200),
    primary key(FK_Stardust)
);

CREATE TABLE Stardust_pilar_Drops (
    Stardust_Fragments_45 INT(45) PRIMARY KEY,
    FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)
);

CREATE TABLE Stardust_pilar_Minions_FlowIvander (
    Pv_1500 VARBINARY(1500) PRIMARY KEY,
    Atk_190 VARBINARY(190),
    Def_38 VARBINARY(38),
    FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)
);

CREATE TABLE Stardust_pilar_Minions_MilhwayWeaver (
    Pv_1200 VARBINARY(1200) PRIMARY KEY,
    Atk_80 VARBINARY(80),
    Def_10 VARBINARY(10),
    FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)
);

CREATE TABLE Stardust_pilar_Minions_StarCell (
    Pv_300 VARBINARY(300) PRIMARY KEY,
    Atk_120 VARBINARY(120),
    Def_50 VARBINARY(50),
    FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)
);

CREATE TABLE Stardust_pilar_Minions_StarGazer (
    Pv_200 VARBINARY(200) PRIMARY KEY,
    Atk_80 VARBINARY(80),
    Def_34 VARBINARY(34),
    FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)
);

CREATE TABLE Stardust_pilar_Minions_Twinkle (
    Pv_200 VARBINARY(200) PRIMARY KEY,
    Atk_80 VARBINARY(80),
    Def_10 VARBINARY(10),
    FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)
);

CREATE TABLE Stardust_pilar_Minions_TwinklePopper (
    Pv_800 VARBINARY(800) PRIMARY KEY,
    Atk_80 VARBINARY(80),
    Def_10 VARBINARY(10),
    FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)
);


/*Boss final Moon Lord*/
CREATE TABLE MoonLord (
FK_Moon int (1),
    Pv_120000 BLOB(120000),
    Atk_1010 VARBINARY(1010),
    Def_160 VARBINARY(160),
    primary key (FK_Moon)
);

CREATE TABLE MoonLord_Drop (
    Greater_Healing_Potion_30 INT(30) PRIMARY KEY,
    Super_Healing_Potion_40 INT(40),
    PortalGun INT(1),
    Meoware INT(1),
    FK_Moon int (1),
 foreign key(FK_Moon)
 references MoonLord(FK_Moon)

);

CREATE TABLE MoonLord_Parts_Core (
    Pv_50000 VARBINARY(50000),
    Def_70 VARBINARY(70) PRIMARY KEY,
    FK_Moon int (1),
 foreign key(FK_Moon)
 references MoonLord(FK_Moon)

);

CREATE TABLE MoonLord_Parts_Head (
    PhantasmalDeathray_150 VARBINARY(150) PRIMARY KEY,
    Pv_45000 VARBINARY(45000),
    Def_50 VARBINARY(50),
    PhantasmalBolt_60 VARBINARY(60),
    FK_Moon int (1),
 foreign key(FK_Moon)
 references MoonLord(FK_Moon)

);

CREATE TABLE MoonLord_Parts_Hand (
    Contact_OpenEye_Socket_80 VARBINARY(80) PRIMARY KEY,
    PhantasmalSphere_100 VARBINARY(100),
    Pv_25000 VARBINARY(25000),
    Def_40 VARBINARY(40),
    PhantasmalEye_60 VARBINARY(60),
    PhantasmalBolt_60 VARBINARY(60),
    FK_Moon int (1),
 foreign key(FK_Moon)
 references MoonLord(FK_Moon)

);


/*              FIM               */








