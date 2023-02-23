Blood_Of_The_Gods_Of_War int (1),
   foreign key (Blood_Of_The_Gods_Of_War)
    references Midnight (Blood_Of_The_Gods_Of_War)
    
    FK_Lunatic int (1),
       foreign  key (FK_Lunatic)
    references  lunatic_Occultist (FK_Lunatic)

FK_Solar int (1),
foreign key (FK_Solar)
references Solar_Pilar(FK_Solar)

FK_Nebulla int (1),
foreign key (FK_Nebulla)
references Nebulla_Pilar(FK_Nebulla)

FK_Vortex int (1),
foreign key (FK_Vortex)
references Vortex_Pilar(FK_Vortex)

FK_Stardust int (1),
foreign key (FK_Stardust)
references Stardust_Pilar(FK_Stardust)

FK_Moon int (1),
 foreign key(FK_Moon)
 references MoonLord(FK_Moon)
