
/* Equipamentos e outros variados de sunset */
CREATE TABLE Sunset (
    Blood_Tip_Sunset VARCHAR(100),
    Atk INT(2),
    Def INT(5),
    Pv INT(2),
    Mp INT(1),
    Money_Platinum INT(3),
    PRIMARY KEY (Blood_Tip_Sunset)
);
CREATE TABLE Sunset_Class (
    Blood_Tip_Sunset VARCHAR(100),
    Sunset_Class VARCHAR(100) PRIMARY KEY,
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);

CREATE TABLE Sunset_Class_Second (
    Blood_Tip_Sunset VARCHAR(100),
    Sunset_Class VARCHAR(100) PRIMARY KEY,
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);

CREATE TABLE Sunset_Equippable (
    Blood_Tip_Sunset VARCHAR(100),
    Sunset_Equippable_All INT(55) PRIMARY KEY,
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);

CREATE TABLE Sunset_Cosmetic (
    Blood_Tip_Sunset VARCHAR(100),
    Equippable_Sunset_Cosmetic_1 VARCHAR(100),
    Equippable_Sunset_Cosmetic_2 VARCHAR(100),
    Equippable_Sunset_Cosmetic_3 VARCHAR(100),
    Equippable_Sunset_Cosmetic_4 VARCHAR(100),
    Equippable_Sunset_Cosmetic_5 VARCHAR(100),
    PRIMARY KEY (Equippable_Sunset_Cosmetic_1),
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);

CREATE TABLE Sunset_Equipments (
    Equippable_Sunset_Equipments_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Sunset_Equipments_2 VARCHAR(100),
    Equippable_Sunset_Equipments_3 VARCHAR(100),
    Equippable_Sunset_Equipments_4 VARCHAR(100),
    Equippable_Sunset_Equipments_5 VARCHAR(100),
    Blood_Tip_Sunset VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);

CREATE TABLE Sunset_Armor (
    Equippable_Sunset_Armor_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Sunset_Armor_2 VARCHAR(100),
    Equippable_Sunset_Armor_3 VARCHAR(100),
    Blood_Tip_Sunset VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);

CREATE TABLE Sunset_Weapons (
    Equippable_Sunset_Weapons_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Sunset_Weapons_2 VARCHAR(100),
    Equippable_Sunset_Weapons_3 VARCHAR(100),
    Blood_Tip_Sunset VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);
CREATE TABLE Sunset_Mount_Pets_Hook (
    Equippable_Sunset_Mount_Pets_Hook_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Sunset_Mount_Pets_Hook_2 VARCHAR(100),
    Equippable_Sunset_Mount_Pets_Hook_3 VARCHAR(100),
    Equippable_Sunset_Mount_Pets_Hook_4 VARCHAR(100),
    Blood_Tip_Sunset VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Sunset)
        REFERENCES Sunset (Blood_Tip_Sunset)
);


/* Equipamentos e outros variados de Midnight */
CREATE TABLE Midnight (
    Blood_Tip_Midnight VARCHAR(100),
    Atk INT(2),
    Def INT(5),
    Pv INT(2),
    Mp INT(1),
    Money_Gold INT(3),
    PRIMARY KEY (Blood_Tip_Midnight)
);
CREATE TABLE Midnight_Class_Warrior (
    Blood_Tip_Midnight VARCHAR(100),
    Midnight_Class VARCHAR(100) PRIMARY KEY,
    FOREIGN KEY (Blood_Tip_Midnight)
        REFERENCES Midnight (Blood_Tip_Midnight)
);

CREATE TABLE Midnight_Equippable (
    Blood_Tip_Midnight VARCHAR(100),
    Midnight_Equippable_All INT(5) PRIMARY KEY,
    FOREIGN KEY (Blood_Tip_Midnight)
        REFERENCES Midnight (Blood_Tip_Midnight)
);

CREATE TABLE Midnight_Cosmetic (
    Equippable_Midnight_Cosmetic_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Midnight_Cosmetic_2 VARCHAR(100),
    Equippable_Midnight_Cosmetic_3 VARCHAR(100),
    Equippable_Midnight_Cosmetic_4 VARCHAR(100),
    Equippable_Midnight_Cosmetic_5 VARCHAR(100),
    Blood_Tip_Midnight VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Midnight)
        REFERENCES Midnight (Blood_Tip_Midnight)
);

CREATE TABLE Midnight_Equipments (
    Equippable_Midnight_Equipments_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Midnight_Equipments_2 VARCHAR(100),
    Equippable_Midnight_Equipments_3 VARCHAR(100),
    Equippable_Midnight_Equipments_4 VARCHAR(100),
    Equippable_Midnight_Equipments_5 VARCHAR(100),
    Blood_Tip_Midnight VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Midnight)
        REFERENCES Midnight (Blood_Tip_Midnight)
);
CREATE TABLE Midnight_Armor (
    Equippable_Midnight_Armor_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Midnight_Armor_2 VARCHAR(100),
    Equippable_Midnight_Armor_3 VARCHAR(100),
    Blood_Tip_Midnight VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Midnight)
        REFERENCES Midnight (Blood_Tip_Midnight)
);

CREATE TABLE Midnight_Weapons (
    Equippable_Midnight_Weapons_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Midnight_Weapons_2 VARCHAR(100),
    Equippable_Midnight_Weapons_3 VARCHAR(100),
    Blood_Tip_Midnight VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Midnight)
        REFERENCES Midnight (Blood_Tip_Midnight)
);

CREATE TABLE Midnight_Mount_Pets_Hook (
    Equippable_Midnight_Mount_Pets_Hook_1 VARCHAR(100) PRIMARY KEY,
    Equippable_Midnight_Mount_Pets_Hook_2 VARCHAR(100),
    Equippable_Midnight_Mount_Pets_Hook_3 VARCHAR(100),
    Equippable_Midnight_Mount_Pets_Hook_4 VARCHAR(100),
    Blood_Tip_Midnight VARCHAR(100),
    FOREIGN KEY (Blood_Tip_Midnight)
        REFERENCES Midnight (Blood_Tip_Midnight)
);


/* lunatic Occultist */
CREATE TABLE lunatic_Occultist (
    Lunatic VARCHAR(100),
    Pv INT(3),
    Def INT(3),
    Physical INT(4),
    Dark_Fire_Ball INT(5),
    Ice_Fog INT(2),
    FireBall INT(5),
    Radius_Efere INT(6),
    Ancient_Light INT(1),
    Ancient_Disgrace INT(1),
    PRIMARY KEY (Lunatic)
);

CREATE TABLE lunatic_Occultist_Drop (
    Drop_Occultist_1 VARCHAR(50) PRIMARY KEY,
    Drop_Occultist_2 VARCHAR(50),
    Drop_Occultist_3 VARCHAR(50),
    Drop_Occultist_4 VARCHAR(30),
    Lunatic VARCHAR(100),
    FOREIGN KEY (Lunatic)
        REFERENCES lunatic_Occultist (Lunatic)
);


/* Pilares do evento da lua */
CREATE TABLE Pillars_Tips (
    Solar INT(1),
    Stardust INT(1),
    Nebulla INT(1),
    Vortex INT(1),
    Pillar_Tips_4 INT(4) PRIMARY KEY,
    Lunatic VARCHAR(100),
    FOREIGN KEY (Lunatic)
        REFERENCES lunatic_Occultist (Lunatic)
);

/* Pilares do evento da lua (Solar Pilar) */
CREATE TABLE Solar_pilar (
    Solar INT(1),
    Pv INT(1),
    PRIMARY KEY (Solar)
);

CREATE TABLE Solar_pilar_Drops (
    Solar_Fragments INT(1) PRIMARY KEY,
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Seliano (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Drakanian (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_RiverGorite (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Sroller (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Crawltipede (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(0),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Drakomire (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_DrakomireRider (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);



/* Pilares do evento da lua (Nebulla Pilar) */

CREATE TABLE Nebulla_pilar (
    Nebulla INT(1),
    Pv INT(1),
    PRIMARY KEY (Nebulla)
);

CREATE TABLE Nebulla_pilar_Drops (
    Nebulla_Fragments INT(1) PRIMARY KEY,
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_BrainSucchlhes (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_EvolutionBeast (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_NebullaFloates (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_Predictos (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);


/* Pilares do evento da lua (Vortex Pilar) */
CREATE TABLE Vortex_pilar (
    Vortex INT(1),
    Pv INT(1),
    PRIMARY KEY (Vortex)
);

CREATE TABLE Vortex_pilar_Drops (
    Nebulla_Fragments INT(1) PRIMARY KEY,
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienHornet (
    Pv INT(1),
    Atk INT(1) PRIMARY KEY,
    Def INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienLarva (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienQueen (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_StormDiver (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_Vortexian (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);


/* Pilares do evento da lua (Stardust Pilar) */
CREATE TABLE Stardust_pilar (
    Stardust INT(1),
    Pv INT(1),
    PRIMARY KEY (Stardust)
);

CREATE TABLE Stardust_pilar_Drops (
    Stardust_Fragments INT(1) PRIMARY KEY,
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_FlowIvander (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_MilhwayWeaver (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_StarCell (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_StarGazer (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_Twinkle (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_TwinklePopper (
    Pv INT(1) PRIMARY KEY,
    Atk INT(1),
    Def INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);


/*Boss final Moon Lord*/
CREATE TABLE MoonLord (
    Moon INT(1),
    Pv INT(1),
    Atk INT(1),
    Def INT(1),
    PRIMARY KEY (Moon)
);

CREATE TABLE MoonLord_Drop (
    MoonLord_Drop_1 VARCHAR(50) PRIMARY KEY,
    MoonLord_Drop_2 VARCHAR(50),
    MoonLord_Drop_3 VARCHAR(50),
    MoonLord_Drop_4 VARCHAR(50),
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);

CREATE TABLE MoonLord_Parts_Core (
    Pv INT(1),
    Def INT(1) PRIMARY KEY,
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);

CREATE TABLE MoonLord_Parts_Head (
    PhantasmalDeathray INT(4) PRIMARY KEY,
    Pv INT(1),
    Def INT(1),
    PhantasmalBolt INT(10),
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);

CREATE TABLE MoonLord_Parts_Hand (
    Contact_OpenEye_Socket INT(3) PRIMARY KEY,
    PhantasmalSphere INT(4),
    Pv INT(1),
    Def INT(1),
    PhantasmalEye INT(2),
    PhantasmalBolt INT(10),
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);


/*              FIM               */








