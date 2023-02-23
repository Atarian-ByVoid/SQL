
/* Equipamentos e outros variados de sunset */
CREATE TABLE Sunset (
    Blood_Of_The_Army_Of_Chaos INT(1),
    Atk_230 INT(1),
    Def_61 INT(1),
    Pv_500 INT(1),
    Mp_220 INT(1),
    Money_Platinum_2 INT(1),
    PRIMARY KEY (Blood_Of_The_Army_Of_Chaos)
);
CREATE TABLE Sunset_Class_Summoner (
    Blood_Of_The_Army_Of_Chaos INT(1),
    Summoner_Class INT(1) PRIMARY KEY,
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Class_Mage (
    Blood_Of_The_Army_Of_Chaos INT(1),
    Mage_Class INT(1) PRIMARY KEY,
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Equippable (
    Blood_Of_The_Army_Of_Chaos INT(1),
    Sunset_Equippable_All int(1) PRIMARY KEY,
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Cosmetic (
    Blood_Of_The_Army_Of_Chaos INT(1),
    Fleting_Celestial_Cuffs INT(1),
    Hallowed_Hood INT(1),
    Hallowed_Plate INT(1),
    Hallowed_Greaves INT(1),
    Hasty_Charm_Myths INT(1),
    PRIMARY KEY (Fleting_Celestial_Cuffs),
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Equipments (
    Meacing_Moon_Charm INT(1) PRIMARY KEY,
    Meacing_Pygmy_Necklace INT(1),
    Arcane_Squires_Shield INT(1),
    Guarding_Blindfold INT(1),
    Brist_Angel_Wings INT(1),
    Blood_Of_The_Army_Of_Chaos INT(1),
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Armor (
    Valhala_Knights_Helm INT(1) PRIMARY KEY,
    Valhala_Knights_Breatsplate INT(1),
    Valhala_Knights_Greaves INT(1),
    Blood_Of_The_Army_Of_Chaos INT(1),
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);

CREATE TABLE Sunset_Weapons (
    Shody_Flying_Dragon INT(1) PRIMARY KEY,
    Forceful_Aerial_Lane INT(1),
    Spectre_Hamaxe INT(1),
    Blood_Of_The_Army_Of_Chaos INT(1),
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);
CREATE TABLE Sunset_Mount_Pets_Hook (
    Cosmic_Car_Key INT(1) PRIMARY KEY,
    Creeper_Egg INT(1),
    Full_Moon_Squeaky INT(1),
    Lunar_Hook_Toy INT(1),
    Blood_Of_The_Army_Of_Chaos INT(1),
    FOREIGN KEY (Blood_Of_The_Army_Of_Chaos)
        REFERENCES Sunset (Blood_Of_The_Army_Of_Chaos)
);


/* Equipamentos e outros variados de Midnight */
CREATE TABLE Midnight (
    Blood_Of_The_Gods_Of_War INT(1),
    Atk_280 INT(1),
    Def_73 INT(1),
    Pv_500 INT(1),
    Mp_200 INT(1),
    Money_Gold_30 INT(1),
    PRIMARY KEY (Blood_Of_The_Gods_Of_War)
);
CREATE TABLE Sunset_Class_Warrior (
    Blood_Of_The_Gods_Of_War INT(1),
    Warrior_Class INT(1) PRIMARY KEY,
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Equippable (
    Blood_Of_The_Gods_Of_War INT(1),
    Midnight_Equippable_All INT(1) PRIMARY KEY,
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Class_Warrior (
    Warrior_Class INT(1) PRIMARY KEY,
    Blood_Of_The_Gods_Of_War INT(1),
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Cosmetic (
    Mage_Hat INT(1) PRIMARY KEY,
    Tax_Collector_Clothes INT(1),
    Sailors_Pants INT(1),
    Winters_Cape INT(1),
    Guarding_Blindfold INT(1),
    Blood_Of_The_Gods_Of_War INT(1),
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Equipments (
    Philosofical_Stone INT(1) PRIMARY KEY,
    Blizzard_In_Bottle INT(1),
    Titan_Gloves INT(1),
    Quiver INT(1),
    Magma_Skull INT(1),
    Blood_Of_The_Gods_Of_War INT(1),
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);
CREATE TABLE Midnight_Armor (
    Squires_Helm INT(1) PRIMARY KEY,
    Squires_Plating INT(1),
    Squires_Greaves INT(1),
    Blood_Of_The_Gods_Of_War INT(1),
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Weapons (
    Pointy_Keybrand INT(1) PRIMARY KEY,
    Orichalcum_Waraxe INT(1),
    Ruthless_Halloweed_Reapeater INT(1),
    Blood_Of_The_Gods_Of_War INT(1),
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);

CREATE TABLE Midnight_Mount_Pets_Hook (
    Cosmic_Car_Key INT(1) PRIMARY KEY,
    Ball_O_Fuse_Wire INT(1),
    Creeper_Egg INT(1),
    Dual_Hook INT(1),
    Blood_Of_The_Gods_Of_War INT(1),
    FOREIGN KEY (Blood_Of_The_Gods_Of_War)
        REFERENCES Midnight (Blood_Of_The_Gods_Of_War)
);


/* lunatic Occultist */
CREATE TABLE lunatic_Occultist (
    Lunatic INT(1),
    Pv_320000 INT(1),
    Def_42 INT(1),
    Physical_50 INT(1),
    Dark_Fire_Ball_36 INT(1),
    Ice_Fog_70 INT(1),
    FireBall_60 INT(1),
    Radius_Efere_90 INT(1),
    Ancient_Light_120 INT(1),
    Ancient_Disgrace_30 INT(1),
    PRIMARY KEY (Lunatic)
);

CREATE TABLE lunatic_Occultist_Drop (
    Ancient_Manipulator INT(1) PRIMARY KEY,
    Lunatics_Mask INT(1),
    Lunatics_Trophy INT(1),
    Advanceded_Healing INT(30),
    Lunatic INT(1),
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
    Lunatic INT(1),
    FOREIGN KEY (Lunatic)
        REFERENCES lunatic_Occultist (Lunatic)
);

/* Pilares do evento da lua (Solar Pilar) */
CREATE TABLE Solar_pilar (
    Solar INT(1),
    Pv_200 INT(1),
    PRIMARY KEY (Solar)
);

CREATE TABLE Solar_pilar_Drops (
    Solar_Fragments_45 INT(1) PRIMARY KEY,
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Seliano (
    Pv_900 INT(1) PRIMARY KEY,
    Atk_90 INT(1),
    Def_34 INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Drakanian (
    Pv_100 INT(1) PRIMARY KEY,
    Atk_80 INT(1),
    Def_28 INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_RiverGorite (
    Pv_600 INT(1) PRIMARY KEY,
    Atk_90 INT(1),
    Def_26 INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Sroller (
    Pv_700 INT(1) PRIMARY KEY,
    Atk_188 INT(1),
    Def_34 INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Crawltipede (
    Pv_100 INT(1) PRIMARY KEY,
    Atk_150 INT(1),
    Def_0 INT(0),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_Drakomire (
    Pv_800 INT(1) PRIMARY KEY,
    Atk_550 INT(1),
    Def_32 INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);

CREATE TABLE Solar_pilar_Minions_DrakomireRider (
    Pv_800 INT(1) PRIMARY KEY,
    Atk_80 INT(1),
    Def_28 INT(1),
    Solar INT(1),
    FOREIGN KEY (Solar)
        REFERENCES Solar_Pilar (Solar)
);



/* Pilares do evento da lua (Nebulla Pilar) */

CREATE TABLE Nebulla_pilar (
    Nebulla INT(1),
    Pv_200 INT(1),
    PRIMARY KEY (Nebulla)
);

CREATE TABLE Nebulla_pilar_Drops (
    Nebulla_Fragments_45 INT(1) PRIMARY KEY,
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_BrainSucchlhes (
    Pv_330 INT(1) PRIMARY KEY,
    Atk_70 INT(1),
    Def_34 INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_EvolutionBeast (
    Pv_850 INT(1) PRIMARY KEY,
    Atk_190 INT(1),
    Def_46 INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_NebullaFloates (
    Pv_1300 INT(1) PRIMARY KEY,
    Atk_205 INT(1),
    Def_20 INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);

CREATE TABLE Nebulla_pilar_Minions_Predictos (
    Pv_200 INT(1) PRIMARY KEY,
    Atk_200 INT(1),
    Def_30 INT(1),
    Nebulla INT(1),
    FOREIGN KEY (Nebulla)
        REFERENCES Nebulla_Pilar (Nebulla)
);


/* Pilares do evento da lua (Vortex Pilar) */
CREATE TABLE Vortex_pilar (
    Vortex INT(1),
    Pv_200 INT(1),
    PRIMARY KEY (Vortex)
);

CREATE TABLE Vortex_pilar_Drops (
    Nebulla_Fragments_45 INT(1) PRIMARY KEY,
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienHornet (
    Pv_5000 INT(1),
    Atk_25 INT(1) PRIMARY KEY,
    Def_20 INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienLarva (
    Pv_200 INT(1) PRIMARY KEY,
    Atk_50 INT(1),
    Def_46 INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_AlienQueen (
    Pv_1000 INT(1) PRIMARY KEY,
    Atk_220 INT(1),
    Def_44 INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_StormDiver (
    Pv_800 INT(1) PRIMARY KEY,
    Atk_250 INT(1),
    Def_40 INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);

CREATE TABLE Vortex_pilar_Minions_Vortexian (
    Pv_700 INT(1) PRIMARY KEY,
    Atk_90 INT(1),
    Def_34 INT(1),
    Vortex INT(1),
    FOREIGN KEY (Vortex)
        REFERENCES Vortex_Pilar (Vortex)
);


/* Pilares do evento da lua (Stardust Pilar) */
CREATE TABLE Stardust_pilar (
    Stardust INT(1),
    Pv_200 INT(1),
    PRIMARY KEY (Stardust)
);

CREATE TABLE Stardust_pilar_Drops (
    Stardust_Fragments_45 INT(1) PRIMARY KEY,
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_FlowIvander (
    Pv_1500 INT(1) PRIMARY KEY,
    Atk_190 INT(1),
    Def_38 INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_MilhwayWeaver (
    Pv_1200 INT(1) PRIMARY KEY,
    Atk_80 INT(1),
    Def_10 INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_StarCell (
    Pv_300 INT(1) PRIMARY KEY,
    Atk_120 INT(1),
    Def_50 INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_StarGazer (
    Pv_200 INT(1) PRIMARY KEY,
    Atk_80 INT(1),
    Def_34 INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_Twinkle (
    Pv_200 INT(1) PRIMARY KEY,
    Atk_80 INT(1),
    Def_10 INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);

CREATE TABLE Stardust_pilar_Minions_TwinklePopper (
    Pv_800 INT(1) PRIMARY KEY,
    Atk_80 INT(1),
    Def_10 INT(1),
    Stardust INT(1),
    FOREIGN KEY (Stardust)
        REFERENCES Stardust_Pilar (Stardust)
);


/*Boss final Moon Lord*/
CREATE TABLE MoonLord (
    Moon INT(1),
    Pv_120000 INT(1),
    Atk_1010 INT(1),
    Def_160 INT(1),
    PRIMARY KEY (Moon)
);

CREATE TABLE MoonLord_Drop (
    Greater_Healing_Potion_30 INT(1) PRIMARY KEY,
    Super_Healing_Potion_40 INT(1),
    PortalGun INT(1),
    Meoware INT(1),
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);

CREATE TABLE MoonLord_Parts_Core (
    Pv_50000 INT(1),
    Def_70 INT(1) PRIMARY KEY,
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);

CREATE TABLE MoonLord_Parts_Head (
    PhantasmalDeathray_150 INT(1) PRIMARY KEY,
    Pv_45000 INT(1),
    Def_50 INT(1),
    PhantasmalBolt_60 INT(1),
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);

CREATE TABLE MoonLord_Parts_Hand (
    Contact_OpenEye_Socket_80 INT(1) PRIMARY KEY,
    PhantasmalSphere_100 INT(1),
    Pv_25000 INT(1),
    Def_40 INT(1),
    PhantasmalEye_60 INT(1),
    PhantasmalBolt_60 INT(1),
    Moon INT(1),
    FOREIGN KEY (Moon)
        REFERENCES MoonLord (Moon)
);


/*              FIM               */








