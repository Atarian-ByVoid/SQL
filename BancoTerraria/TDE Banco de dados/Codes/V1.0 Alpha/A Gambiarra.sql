create database Test;
use Test;


CREATE TABLE Sunset (
Blood_Of_The_Army_Of_Chaos int (1),
    Atk_230 VARBINARY(230),
    Def_61 VARBINARY(61),
    Pv_500 VARBINARY(500),
    Mp_220 VARBINARY(220),
    Money_Platinum_2 VARBINARY(2),
    primary key (Blood_Of_The_Army_Of_Chaos)
    
);
CREATE TABLE Sunset_Equippable (
Blood_Of_The_Army_Of_Chaos int (1),
    Sunset_Equippable_All FLOAT(25) PRIMARY KEY,
    foreign key (Blood_Of_The_Army_Of_Chaos)
    references Sunset (Blood_Of_The_Army_Of_Chaos)
);



