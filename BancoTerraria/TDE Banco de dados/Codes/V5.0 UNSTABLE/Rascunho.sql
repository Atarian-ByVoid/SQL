CREATE TABLE Pillars (
   Id_Boss INTEGER,
    Id_Pillar INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Pillar VARCHAR(30),
    Pv INTEGER,
    Fragments_Drop VARCHAR(30),
    Fragments_Quantity INTEGER,
    FOREIGN KEY (Id)
        REFERENCES lunatic_Occultist (id),
            FOREIGN KEY (Id)
        REFERENCES MoonLord (Id)
);

